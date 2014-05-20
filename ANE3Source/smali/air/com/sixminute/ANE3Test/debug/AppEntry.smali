.class public Lair/com/sixminute/ANE3Test/debug/AppEntry;
.super Landroid/app/Activity;
.source "AppEntry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppEntry"

.field private static final RESOURCE_BUTTON_EXIT:Ljava/lang/String; = "string.button_exit"

.field private static final RESOURCE_BUTTON_INSTALL:Ljava/lang/String; = "string.button_install"

.field private static final RESOURCE_CLASS:Ljava/lang/String; = "air.com.sixminute.ANE3Test.debug.R"

.field private static final RESOURCE_TEXT_RUNTIME_REQUIRED:Ljava/lang/String; = "string.text_runtime_required"

.field private static final RESOURCE_TITLE_ADOBE_AIR:Ljava/lang/String; = "string.title_adobe_air"

.field private static RUNTIME_PACKAGE_ID:Ljava/lang/String;

.field private static sAndroidActivityWrapper:Ljava/lang/Object;

.field private static sAndroidActivityWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sDloader:Ldalvik/system/DexClassLoader;

.field private static sRuntimeClassesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 62
    const-string v0, "com.adobe.air"

    sput-object v0, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "method"
    .parameter "args"

    .prologue
    .line 350
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_0

    .line 351
    const/4 v1, 0x0

    .line 365
    :goto_0
    return-object v1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 356
    .local v0, retval:Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 357
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #retval:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    .line 365
    goto :goto_0

    .line 359
    .restart local v0       #retval:Ljava/lang/Object;
    :cond_1
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private InvokeWrapperOnCreate()V
    .locals 12

    .prologue
    .line 328
    :try_start_0
    sget-object v7, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v8, "onCreate"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/app/Activity;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, [Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 333
    .local v4, method:Ljava/lang/reflect/Method;
    const-string v6, ""

    .line 334
    .local v6, xmlPath:Ljava/lang/String;
    const-string v5, ""

    .line 335
    .local v5, rootDirectory:Ljava/lang/String;
    const-string v1, "-nodebug"

    .line 336
    .local v1, extraArgs:Ljava/lang/String;
    new-instance v2, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 337
    .local v2, isADL:Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 338
    .local v3, isDebuggerMode:Ljava/lang/Boolean;
    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const/4 v7, 0x2

    aput-object v1, v0, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 340
    .local v0, args:[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-direct {p0, v4, v7}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #extraArgs:Ljava/lang/String;
    .end local v2           #isADL:Ljava/lang/Boolean;
    .end local v3           #isDebuggerMode:Ljava/lang/Boolean;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #rootDirectory:Ljava/lang/String;
    .end local v6           #xmlPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static KillSelf()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 371
    return-void
.end method

.method static synthetic access$000(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->launchMarketPlaceForAIR()V

    return-void
.end method

.method static synthetic access$100(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->loadSharedRuntimeDex()V

    return-void
.end method

.method static synthetic access$200(Lair/com/sixminute/ANE3Test/debug/AppEntry;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->createActivityWrapper(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    return v0
.end method

.method static synthetic access$400(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeWrapperOnCreate()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->KillSelf()V

    return-void
.end method

.method private createActivityWrapper(Z)V
    .locals 6
    .parameter "hasCaptiveRuntime"

    .prologue
    const-string v1, "CreateAndroidActivityWrapper"

    .line 618
    if-eqz p1, :cond_0

    .line 620
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "CreateAndroidActivityWrapper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 621
    .local v0, methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 633
    .end local v0           #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 625
    :cond_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "CreateAndroidActivityWrapper"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 626
    .restart local v0       #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v0           #methodCreateAndroidActivityWrapper:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isRuntimeInstalled()Z
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 124
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 127
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, nfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRuntimeOnExternalStorage()Z
    .locals 5

    .prologue
    const/high16 v4, 0x4

    .line 137
    invoke-virtual {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 143
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 151
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 146
    :catch_0
    move-exception v2

    .line 151
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private launchAIRService()V
    .locals 4

    .prologue
    .line 280
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.adobe.air.AIRServiceAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v3, "com.adobe.air.AIRService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    new-instance v0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;

    invoke-direct {v0, p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;-><init>(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    .line 315
    .local v0, conn:Landroid/content/ServiceConnection;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private launchMarketPlaceForAIR()V
    .locals 8

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 88
    .local v1, airDownloadURL:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 89
    .local v2, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 92
    .local v4, metadata:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 94
    const-string v5, "airDownloadURL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #metadata:Landroid/os/Bundle;
    :cond_0
    :goto_0
    move-object v3, v1

    .line 105
    .local v3, marketPlaceURL:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    :cond_1
    :try_start_1
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {p0, v5, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :goto_1
    return-void

    .line 112
    :catch_0
    move-exception v5

    goto :goto_1

    .line 98
    .end local v3           #marketPlaceURL:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadCaptiveRuntimeClasses()Z
    .locals 2

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 576
    .local v0, hasCaptiveRuntime:Z
    :try_start_0
    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 577
    const/4 v0, 0x1

    .line 578
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 580
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadSharedRuntimeDex()V
    .locals 6

    .prologue
    .line 593
    :try_start_0
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_0

    .line 596
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 597
    .local v0, con:Landroid/content/Context;
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    .line 602
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    const-string v2, "com.adobe.air.AndroidActivityWrapper"

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 603
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 604
    const/4 v1, 0x1

    sput-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v0           #con:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 4

    .prologue
    const-string v3, "com.adobe.air.AndroidGcmRegistrationService"

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adobe.air.AndroidGcmRegistrationService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, serviceIntent:Landroid/content/Intent;
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v2, "com.adobe.air.AndroidGcmRegistrationService"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    return-void
.end method

.method private showDialog(ILjava/lang/String;II)V
    .locals 2
    .parameter "titleId"
    .parameter "text"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v1, Lair/com/sixminute/ANE3Test/debug/AppEntry$1;

    invoke-direct {v1, p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry$1;-><init>(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v1, Lair/com/sixminute/ANE3Test/debug/AppEntry$2;

    invoke-direct {v1, p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry$2;-><init>(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v1, Lair/com/sixminute/ANE3Test/debug/AppEntry$3;

    invoke-direct {v1, p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry$3;-><init>(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    return-void
.end method

.method private showRuntimeNotInstalledDialog()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v2, "air.com.sixminute.ANE3Test.debug.R"

    invoke-direct {v0, v2}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, r:Lcom/adobe/air/ResourceIdMap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string.text_runtime_required"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string.text_install_runtime"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, text:Ljava/lang/String;
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->showDialog(ILjava/lang/String;II)V

    .line 195
    return-void
.end method

.method private showRuntimeOnExternalStorageDialog()V
    .locals 5

    .prologue
    .line 199
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v2, "air.com.sixminute.ANE3Test.debug.R"

    invoke-direct {v0, v2}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, r:Lcom/adobe/air/ResourceIdMap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string.text_runtime_required"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string.text_runtime_on_external_storage"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, text:Ljava/lang/String;
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v1, v3, v4}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->showDialog(ILjava/lang/String;II)V

    .line 205
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 501
    const/4 v0, 0x0

    .line 504
    .local v0, handled:Z
    :try_start_0
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "dispatchGenericMotionEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 505
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v8

    :goto_1
    return v2

    :cond_1
    move v2, v7

    goto :goto_1

    .line 507
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 483
    const/4 v0, 0x0

    .line 486
    .local v0, handled:Z
    :try_start_0
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "dispatchKeyEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 487
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v8

    :goto_1
    return v2

    :cond_1
    move v2, v7

    goto :goto_1

    .line 489
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 6
    .parameter "child"
    .parameter "requestCode"

    .prologue
    .line 638
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 642
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "finishActivityFromChild"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 643
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 6
    .parameter "child"

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 658
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "finishFromChild"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 659
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 539
    :try_start_0
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 541
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 542
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 6
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 1188
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 1192
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onApplyThemeResource"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources$Theme;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1193
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1195
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 670
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 674
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onAttachedToWindow"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 675
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 690
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onBackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 691
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 1204
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 1208
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onChildTitleChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1209
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 471
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 472
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    .line 702
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 706
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContentChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 707
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 722
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onContextItemSelected"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 723
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 728
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 725
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 728
    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 739
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContextMenuClosed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 740
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 216
    .local v3, t:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 217
    .local v1, millis:J
    const-string v4, "StartupTime1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->loadCaptiveRuntimeClasses()Z

    move-result v0

    .line 223
    .local v0, hasCaptiveRuntime:Z
    if-nez v0, :cond_2

    .line 225
    sget-boolean v4, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->isRuntimeInstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->isRuntimeOnExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->showRuntimeOnExternalStorageDialog()V

    .line 265
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->showRuntimeNotInstalledDialog()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->loadSharedRuntimeDex()V

    .line 239
    :cond_2
    sget-boolean v4, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v4, :cond_3

    .line 241
    invoke-direct {p0, v0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->createActivityWrapper(Z)V

    .line 244
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeWrapperOnCreate()V

    .line 264
    :goto_1
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->registerForNotifications()V

    goto :goto_0

    .line 248
    :cond_3
    if-eqz v0, :cond_4

    .line 252
    invoke-static {}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->KillSelf()V

    goto :goto_1

    .line 260
    :cond_4
    invoke-direct {p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->launchAIRService()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 751
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 755
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateContextMenu"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/ContextMenu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/ContextMenu$ContextMenuInfo;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 756
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 767
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 771
    .local v2, retval:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDescription"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 772
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 777
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 774
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 777
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 1220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 1224
    .local v2, retval:Landroid/app/Dialog;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDialog"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/app/Dialog;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1225
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 1230
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1227
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1230
    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1237
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    .line 1241
    .local v2, retval:Landroid/app/Dialog;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateDialog"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/app/Dialog;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1242
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 1247
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1244
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1247
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 788
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateOptionsMenu"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 789
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 794
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 791
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 794
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 801
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 805
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreatePanelMenu"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 806
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 811
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 808
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 811
    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 8
    .parameter "featureId"

    .prologue
    .line 818
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    .line 822
    .local v2, retval:Landroid/view/View;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreatePanelView"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 823
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 828
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 825
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 828
    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 8
    .parameter "outBitmap"
    .parameter "canvas"

    .prologue
    .line 835
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v2

    .line 839
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateThumbnail"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Bitmap;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Canvas;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 840
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 845
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 842
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 845
    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 852
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 856
    .local v2, retval:Landroid/view/View;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onCreateView"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 857
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    .line 862
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 859
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 862
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 451
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 454
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 455
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 869
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 873
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onDetachedFromWindow"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 874
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 885
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 889
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyDown"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 890
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 895
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 892
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 895
    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 902
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 906
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyLongPress"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 907
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 912
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 909
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 912
    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 919
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 923
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyMultiple"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 924
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 929
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 926
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 929
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 936
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 940
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onKeyUp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/KeyEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 941
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 946
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 943
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 946
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 525
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 526
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 8
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 953
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 957
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onMenuItemSelected"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 958
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 963
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 960
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 963
    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 970
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v2

    .line 974
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onMenuOpened"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 975
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 980
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 977
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 980
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "aIntent"

    .prologue
    .line 554
    move-object v0, p1

    .line 555
    .local v0, ii:Landroid/content/Intent;
    invoke-super {p0, v0}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 561
    :try_start_0
    sget-object v2, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "onNewIntent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 562
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 988
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 992
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onOptionsItemSelected"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MenuItem;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 993
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 998
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 995
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 998
    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 1005
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1009
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onOptionsMenuClosed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1010
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1021
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1025
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPanelClosed"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1026
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 400
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 403
    :try_start_0
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 406
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 1254
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1258
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPostCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1259
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 4

    .prologue
    .line 1270
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1274
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPostResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1275
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1286
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1290
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareDialog"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/R$id;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1291
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1293
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1302
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1306
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareDialog"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/R$id;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1307
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 1037
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 1041
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onPrepareOptionsMenu"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1042
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1047
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1044
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1047
    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 8
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 1054
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 1058
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onPreparePanel"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/view/View;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/view/Menu;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1059
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1064
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1061
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1064
    goto :goto_0
.end method

.method public onRestart()V
    .locals 4

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 385
    :try_start_0
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 387
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRestart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 388
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 1318
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1322
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRestoreInstanceState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1323
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 421
    :try_start_0
    sget-boolean v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_0

    .line 423
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 424
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1071
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 1075
    .local v2, retval:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onRetainNonConfigurationInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1076
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1081
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1078
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 1081
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 1334
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1338
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onSaveInstanceState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1339
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1341
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 8

    .prologue
    .line 1088
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v2

    .line 1092
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onSearchRequested"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1093
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1098
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1095
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1098
    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 377
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 436
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 439
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 440
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "title"
    .parameter "color"

    .prologue
    .line 1350
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1354
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTitleChanged"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1355
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 1105
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1109
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onTouchEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1110
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1115
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1112
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1115
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 1122
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1126
    .local v2, retval:Z
    :try_start_0
    sget-object v3, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "onTrackballEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1127
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v3}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1133
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1130
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 1133
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 1140
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1144
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onUserInteraction"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1145
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1147
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .prologue
    .line 1366
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1370
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onUserLeaveHint"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1371
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "params"

    .prologue
    .line 1156
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1160
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onWindowAttributesChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/WindowManager$LayoutParams;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1161
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    .line 1172
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1176
    :try_start_0
    sget-object v1, Lair/com/sixminute/ANE3Test/debug/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onWindowFocusChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1177
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v1

    goto :goto_0
.end method
