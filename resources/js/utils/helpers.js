export const titleCase = (str) => { 
    return str.replace (/^[-_]*(.)/, (_, c) => c.toUpperCase()) // Initial char (after -/_)
        .replace (/[-_]+(.)/g, (_, c) => ' ' + c.toUpperCase()) // First char after each -/_
}