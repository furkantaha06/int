var developmentDatabase = {
    postgres: {
    host: 'ec2-52-18-116-67.eu-west-1.compute.amazonaws.com',
    port: 5432,
    database: 'df1hed9ra4oi6h',
    user: 'nnzegndlbtkbcv',
    password: 'c9e33a6c54dc66b70f41ecae1d65a1053f0c88d690c04b30d86640637521d692'
    }
    }
    
    var connectionString = "postgresql://nnzegndlbtkbcv:c9e33a6c54dc66b70f41ecae1d65a1053f0c88d690c04b30d86640637521d692@ec2-52-18-116-67.eu-west-1.compute.amazonaws.com:5432/df1hed9ra4oi6h";
    if (process.env.NODE_ENV == 'production') {
    //Production mode
    if (process.env.DATABASE_URL) {
    developmentDatabase =
    parseConnectionString(process.env.DATABASE_URL);
    } else {
    console.log("process.env.DATABASE_URL empty, connectionStringvariable used");
    developmentDatabase = parseConnectionString(connectionString);
    }
    }else{
    //Development mode
    developmentDatabase = parseConnectionString(connectionString);
    }
    function parseConnectionString(connectionString) {
    if (connectionString) {
    var myRegexp = /(\w+):(\w+)@(.+):(\w+)\/(\w+)/g;
    var match = myRegexp.exec(connectionString);
    if (match.length == 6) {
    developmentDatabase.postgres.user = match[1];
    developmentDatabase.postgres.password = match[2];
    developmentDatabase.postgres.host = match[3];
    developmentDatabase.postgres.port = Number(match[4]);
    developmentDatabase.postgres.database = match[5];
    developmentDatabase.postgres.ssl = true;
    return developmentDatabase;
    }
    }
    console.log("connectionString cannot be parsed");
    return null;
    }
    module.exports = {
    hostname: "http://localhost",
    port: 4000,
    database: {
    postgres: developmentDatabase.postgres
    }
    }

