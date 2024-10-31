#include <stdio.h>
#include <aSubRecord.h>
#include <dbDefs.h>
#include <epicsExport.h>
#include <registryFunction.h>
#include <subRecord.h>

static long template_asub_routine(aSubRecord *prec) {

    double* in = (double  *) prec->a;
    double* out = (double  *) prec->vala;

    return 0; /* process output links */
}

epicsRegisterFunction(template_asub_routine);