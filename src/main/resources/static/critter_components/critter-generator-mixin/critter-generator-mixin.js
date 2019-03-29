import { dedupingMixin } from '/lib/@polymer/polymer/lib/utils/mixin.js';

import '/static/rasterizehtml/dist/rasterizeHTML.js';


/*
#CritterMixins.Generator

Holds general functions for code-critter Levels

*/

/**
 * # CritterMixins.Level
 *
 * Shortcuts for common gui element interaction.
 *
 * @polymerBehavior CritterMixins.Generator
 */

export const Generator = dedupingMixin(function(superClass) {
    return class extends superClass {

        static get properties() {
            return {
                imgBuffer: {
                    type: Map,
                    value: new Map()
                }
            };
        }
    }
});
