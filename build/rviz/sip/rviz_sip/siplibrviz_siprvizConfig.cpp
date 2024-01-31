/*
 * Interface wrapper code.
 *
 * Generated by SIP 4.19.21
 */

#include "sipAPIlibrviz_sip.h"

#line 7 "config.sip"
#define ROS_PACKAGE_NAME "rviz"
#include <rviz/config.h>
#line 13 "/home/jk/catkin_ws/build/rviz/sip/rviz_sip/siplibrviz_siprvizConfig.cpp"

#line 26 "/usr/share/sip/PyQt5/QtCore/qvariant.sip"
#include <qvariant.h>
#line 17 "/home/jk/catkin_ws/build/rviz/sip/rviz_sip/siplibrviz_siprvizConfig.cpp"
#line 7 "config.sip"
#define ROS_PACKAGE_NAME "rviz"
#include <rviz/config.h>
#line 45 "config.sip"
#define ROS_PACKAGE_NAME "rviz"
#include <rviz/config.h>
#line 24 "/home/jk/catkin_ws/build/rviz/sip/rviz_sip/siplibrviz_siprvizConfig.cpp"
#line 27 "/usr/share/sip/PyQt5/QtCore/qstring.sip"
#include <qstring.h>
#line 27 "/home/jk/catkin_ws/build/rviz/sip/rviz_sip/siplibrviz_siprvizConfig.cpp"


extern "C" {static PyObject *meth_rviz_Config_getType(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_getType(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
             ::rviz::Config::Type sipRes;

            sipRes = sipCpp->getType();

            return sipConvertFromEnum(static_cast<int>(sipRes), sipType_rviz_Config_Type);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_getType, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_setType(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_setType(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
         ::rviz::Config::Type a0;
         ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BE", &sipSelf, sipType_rviz_Config, &sipCpp, sipType_rviz_Config_Type, &a0))
        {
            sipCpp->setType(a0);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_setType, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_isValid(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_isValid(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
            bool sipRes;

            sipRes = sipCpp->isValid();

            return PyBool_FromLong(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_isValid, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_mapSetValue(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_mapSetValue(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::QString* a0;
        int a0State = 0;
         ::QVariant* a1;
        int a1State = 0;
         ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ1J1", &sipSelf, sipType_rviz_Config, &sipCpp, sipType_QString,&a0, &a0State, sipType_QVariant, &a1, &a1State))
        {
            sipCpp->mapSetValue(*a0,*a1);
            sipReleaseType(const_cast< ::QString *>(a0),sipType_QString,a0State);
            sipReleaseType(a1,sipType_QVariant,a1State);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_mapSetValue, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_mapMakeChild(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_mapMakeChild(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::QString* a0;
        int a0State = 0;
         ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ1", &sipSelf, sipType_rviz_Config, &sipCpp, sipType_QString,&a0, &a0State))
        {
             ::rviz::Config*sipRes;

            sipRes = new  ::rviz::Config(sipCpp->mapMakeChild(*a0));
            sipReleaseType(const_cast< ::QString *>(a0),sipType_QString,a0State);

            return sipConvertFromNewType(sipRes,sipType_rviz_Config,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_mapMakeChild, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_mapGetChild(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_mapGetChild(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::QString* a0;
        int a0State = 0;
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ1", &sipSelf, sipType_rviz_Config, &sipCpp, sipType_QString,&a0, &a0State))
        {
             ::rviz::Config*sipRes;

            sipRes = new  ::rviz::Config(sipCpp->mapGetChild(*a0));
            sipReleaseType(const_cast< ::QString *>(a0),sipType_QString,a0State);

            return sipConvertFromNewType(sipRes,sipType_rviz_Config,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_mapGetChild, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_mapIterator(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_mapIterator(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
             ::rviz::Config::MapIterator*sipRes;

            sipRes = new  ::rviz::Config::MapIterator(sipCpp->mapIterator());

            return sipConvertFromNewType(sipRes,sipType_rviz_Config_MapIterator,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_mapIterator, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_setValue(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_setValue(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::QVariant* a0;
        int a0State = 0;
         ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "BJ1", &sipSelf, sipType_rviz_Config, &sipCpp, sipType_QVariant, &a0, &a0State))
        {
            sipCpp->setValue(*a0);
            sipReleaseType(const_cast< ::QVariant *>(a0),sipType_QVariant,a0State);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_setValue, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_getValue(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_getValue(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
             ::QVariant*sipRes;

            sipRes = new  ::QVariant(sipCpp->getValue());

            return sipConvertFromNewType(sipRes,sipType_QVariant,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_getValue, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_listLength(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_listLength(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
            int sipRes;

            sipRes = sipCpp->listLength();

            return SIPLong_FromLong(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_listLength, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_listChildAt(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_listChildAt(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
        int a0;
        const  ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "Bi", &sipSelf, sipType_rviz_Config, &sipCpp, &a0))
        {
             ::rviz::Config*sipRes;

            sipRes = new  ::rviz::Config(sipCpp->listChildAt(a0));

            return sipConvertFromNewType(sipRes,sipType_rviz_Config,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_listChildAt, SIP_NULLPTR);

    return SIP_NULLPTR;
}


extern "C" {static PyObject *meth_rviz_Config_listAppendNew(PyObject *, PyObject *);}
static PyObject *meth_rviz_Config_listAppendNew(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = SIP_NULLPTR;

    {
         ::rviz::Config *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_rviz_Config, &sipCpp))
        {
             ::rviz::Config*sipRes;

            sipRes = new  ::rviz::Config(sipCpp->listAppendNew());

            return sipConvertFromNewType(sipRes,sipType_rviz_Config,SIP_NULLPTR);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Config, sipName_listAppendNew, SIP_NULLPTR);

    return SIP_NULLPTR;
}


/* Call the instance's destructor. */
extern "C" {static void release_rviz_Config(void *, int);}
static void release_rviz_Config(void *sipCppV, int)
{
    delete reinterpret_cast< ::rviz::Config *>(sipCppV);
}


extern "C" {static void assign_rviz_Config(void *, SIP_SSIZE_T, void *);}
static void assign_rviz_Config(void *sipDst, SIP_SSIZE_T sipDstIdx, void *sipSrc)
{
    reinterpret_cast< ::rviz::Config *>(sipDst)[sipDstIdx] = *reinterpret_cast< ::rviz::Config *>(sipSrc);
}


extern "C" {static void *array_rviz_Config(SIP_SSIZE_T);}
static void *array_rviz_Config(SIP_SSIZE_T sipNrElem)
{
    return new  ::rviz::Config[sipNrElem];
}


extern "C" {static void *copy_rviz_Config(const void *, SIP_SSIZE_T);}
static void *copy_rviz_Config(const void *sipSrc, SIP_SSIZE_T sipSrcIdx)
{
    return new  ::rviz::Config(reinterpret_cast<const  ::rviz::Config *>(sipSrc)[sipSrcIdx]);
}


extern "C" {static void dealloc_rviz_Config(sipSimpleWrapper *);}
static void dealloc_rviz_Config(sipSimpleWrapper *sipSelf)
{
    if (sipIsOwnedByPython(sipSelf))
    {
        release_rviz_Config(sipGetAddress(sipSelf), 0);
    }
}


extern "C" {static void *init_type_rviz_Config(sipSimpleWrapper *, PyObject *, PyObject *, PyObject **, PyObject **, PyObject **);}
static void *init_type_rviz_Config(sipSimpleWrapper *, PyObject *sipArgs, PyObject *sipKwds, PyObject **sipUnused, PyObject **, PyObject **sipParseErr)
{
     ::rviz::Config *sipCpp = SIP_NULLPTR;

    {
        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, SIP_NULLPTR, sipUnused, ""))
        {
            sipCpp = new  ::rviz::Config();

            return sipCpp;
        }
    }

    {
        const  ::rviz::Config* a0;

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, SIP_NULLPTR, sipUnused, "J9", sipType_rviz_Config, &a0))
        {
            sipCpp = new  ::rviz::Config(*a0);

            return sipCpp;
        }
    }

    {
         ::QVariant* a0;
        int a0State = 0;

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, SIP_NULLPTR, sipUnused, "J1", sipType_QVariant, &a0, &a0State))
        {
            sipCpp = new  ::rviz::Config(*a0);
            sipReleaseType(a0,sipType_QVariant,a0State);

            return sipCpp;
        }
    }

    return SIP_NULLPTR;
}


static PyMethodDef methods_rviz_Config[] = {
    {SIP_MLNAME_CAST(sipName_getType), meth_rviz_Config_getType, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_getValue), meth_rviz_Config_getValue, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_isValid), meth_rviz_Config_isValid, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_listAppendNew), meth_rviz_Config_listAppendNew, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_listChildAt), meth_rviz_Config_listChildAt, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_listLength), meth_rviz_Config_listLength, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_mapGetChild), meth_rviz_Config_mapGetChild, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_mapIterator), meth_rviz_Config_mapIterator, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_mapMakeChild), meth_rviz_Config_mapMakeChild, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_mapSetValue), meth_rviz_Config_mapSetValue, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_setType), meth_rviz_Config_setType, METH_VARARGS, SIP_NULLPTR},
    {SIP_MLNAME_CAST(sipName_setValue), meth_rviz_Config_setValue, METH_VARARGS, SIP_NULLPTR}
};

static sipEnumMemberDef enummembers_rviz_Config[] = {
    {sipName_Empty, static_cast<int>( ::rviz::Config::Empty), 4},
    {sipName_Invalid, static_cast<int>( ::rviz::Config::Invalid), 4},
    {sipName_List, static_cast<int>( ::rviz::Config::List), 4},
    {sipName_Map, static_cast<int>( ::rviz::Config::Map), 4},
    {sipName_Value, static_cast<int>( ::rviz::Config::Value), 4},
};


static pyqt5ClassPluginDef plugin_rviz_Config = {
    SIP_NULLPTR,
    0,
    SIP_NULLPTR,
    SIP_NULLPTR
};


sipClassTypeDef sipTypeDef_librviz_sip_rviz_Config = {
    {
        -1,
        SIP_NULLPTR,
        SIP_NULLPTR,
        SIP_TYPE_SUPER_INIT|SIP_TYPE_CLASS,
        sipNameNr_rviz__Config,
        {SIP_NULLPTR},
        &plugin_rviz_Config
    },
    {
        sipNameNr_Config,
        {0, 255, 0},
        12, methods_rviz_Config,
        5, enummembers_rviz_Config,
        0, SIP_NULLPTR,
        {SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR, SIP_NULLPTR},
    },
    SIP_NULLPTR,
    -1,
    sipNameNr_sip_simplewrapper,
    SIP_NULLPTR,
    SIP_NULLPTR,
    init_type_rviz_Config,
    SIP_NULLPTR,
    SIP_NULLPTR,
#if PY_MAJOR_VERSION >= 3
    SIP_NULLPTR,
    SIP_NULLPTR,
#else
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
#endif
    dealloc_rviz_Config,
    assign_rviz_Config,
    array_rviz_Config,
    copy_rviz_Config,
    release_rviz_Config,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR,
    SIP_NULLPTR
};
