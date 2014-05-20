.class public Lcom/adobe/air/GamePreviewAppEntry;
.super Landroid/app/Activity;
.source "GamePreviewAppEntry.java"


# static fields
.field private static final GAME_PREVIEW_APP_XML:Ljava/lang/String; = "assets/META-INF/AIR/GamePreview-app.xml"

.field private static final GAME_PREVIEW_SRC_DIR:Ljava/lang/String; = "assets"

.field private static final GAME_PREVIEW_SWF:Ljava/lang/String; = "assets/GamePreview.swf"

.field private static final LOG_TAG:Ljava/lang/String; = "AppEntry"

.field private static final RESOURCE_BUTTON_EXIT:Ljava/lang/String; = "string.button_exit"

.field private static final RESOURCE_BUTTON_INSTALL:Ljava/lang/String; = "string.button_install"

.field private static final RESOURCE_CLASS:Ljava/lang/String; = "air.com.adobe.appentry.R"

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
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 61
    const-string v0, "com.adobe.air"

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/GamePreviewAppEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 336
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v0, :cond_0

    move-object v0, v2

    .line 351
    :goto_0
    return-object v0

    .line 342
    :cond_0
    if-eqz p2, :cond_1

    .line 343
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method private InvokeWrapperOnCreate()V
    .locals 10

    .prologue
    .line 312
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 317
    const-string v1, "assets/META-INF/AIR/GamePreview-app.xml"

    .line 318
    const-string v2, "assets"

    .line 319
    const-string v3, "-nodebug"

    .line 320
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    .line 321
    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    .line 322
    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 324
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    .line 326
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static KillSelf()V
    .locals 1

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->launchMarketPlaceForAIR()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadSharedRuntimeDex()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/GamePreviewAppEntry;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/air/GamePreviewAppEntry;->createActivityWrapper(Z)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeWrapperOnCreate()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->KillSelf()V

    return-void
.end method

.method private createActivityWrapper(Z)V
    .locals 5
    .parameter

    .prologue
    const-string v0, "CreateAndroidActivityWrapper"

    .line 604
    if-eqz p1, :cond_0

    .line 606
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "CreateAndroidActivityWrapper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 607
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

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    .line 619
    :goto_0
    return-void

    .line 611
    :cond_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "CreateAndroidActivityWrapper"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 612
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isRuntimeInstalled()Z
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRuntimeOnExternalStorage()Z
    .locals 4

    .prologue
    const/high16 v3, 0x4

    .line 138
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAIRService()V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adobe.air.AIRServiceAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v2, "com.adobe.air.AIRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$4;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$4;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    .line 299
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private launchMarketPlaceForAIR()V
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 90
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 93
    if-eqz v0, :cond_1

    .line 95
    const-string v2, "airDownloadURL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :try_start_1
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Lcom/adobe/air/GamePreviewAppEntry;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private loadCaptiveRuntimeClasses()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 558
    const/4 v0, 0x0

    .line 562
    :try_start_0
    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :try_start_1
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move v0, v2

    .line 570
    :goto_0
    return v0

    .line 566
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private loadSharedRuntimeDex()V
    .locals 5

    .prologue
    .line 579
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v0, :cond_0

    .line 582
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 583
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lcom/adobe/air/GamePreviewAppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/air/GamePreviewAppEntry;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    .line 588
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 589
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialog(ILjava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$1;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$2;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    new-instance v1, Lcom/adobe/air/GamePreviewAppEntry$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/GamePreviewAppEntry$3;-><init>(Lcom/adobe/air/GamePreviewAppEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    return-void
.end method

.method private showRuntimeNotInstalledDialog()V
    .locals 5

    .prologue
    .line 190
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.adobe.appentry.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string.text_install_runtime"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/adobe/air/GamePreviewAppEntry;->showDialog(ILjava/lang/String;II)V

    .line 196
    return-void
.end method

.method private showRuntimeOnExternalStorageDialog()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.adobe.appentry.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string.text_runtime_on_external_storage"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/GamePreviewAppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "string.title_adobe_air"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/adobe/air/GamePreviewAppEntry;->showDialog(ILjava/lang/String;II)V

    .line 206
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 487
    const/4 v0, 0x0

    .line 490
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "dispatchGenericMotionEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 491
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    if-nez v6, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_1

    .line 493
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 469
    const/4 v0, 0x0

    .line 472
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "dispatchKeyEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 473
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    if-nez v6, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 628
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishActivityFromChild"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 629
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 644
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishFromChild"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 645
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 528
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

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1174
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 1178
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onApplyThemeResource"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Resources$Theme;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1179
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

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 660
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 661
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 672
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 676
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 677
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1190
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 1194
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onChildTitleChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1195
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 458
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 688
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 692
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContentChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 693
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    .line 704
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 708
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContextItemSelected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 709
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 714
    :goto_0
    return v0

    .line 711
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 725
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContextMenuClosed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 726
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadCaptiveRuntimeClasses()Z

    move-result v0

    .line 215
    if-nez v0, :cond_2

    .line 217
    sget-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->isRuntimeInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->isRuntimeOnExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->showRuntimeOnExternalStorageDialog()V

    .line 256
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->showRuntimeNotInstalledDialog()V

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->loadSharedRuntimeDex()V

    .line 232
    :cond_2
    sget-boolean v1, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v1, :cond_3

    .line 234
    invoke-direct {p0, v0}, Lcom/adobe/air/GamePreviewAppEntry;->createActivityWrapper(Z)V

    .line 237
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeWrapperOnCreate()V

    goto :goto_0

    .line 241
    :cond_3
    if-eqz v0, :cond_4

    .line 245
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->KillSelf()V

    goto :goto_0

    .line 253
    :cond_4
    invoke-direct {p0}, Lcom/adobe/air/GamePreviewAppEntry;->launchAIRService()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 741
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreateContextMenu"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/ContextMenu;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/view/ContextMenu$ContextMenuInfo;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 742
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 753
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 757
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDescription"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 758
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 763
    :goto_0
    return-object v0

    .line 760
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    .line 1206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 1210
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1211
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 1216
    :goto_0
    return-object v0

    .line 1213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1223
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1227
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/app/Dialog;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1228
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 1233
    :goto_0
    return-object v0

    .line 1230
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    .line 770
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 774
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateOptionsMenu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 775
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 780
    :goto_0
    return v0

    .line 777
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 791
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelMenu"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 792
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 794
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 6
    .parameter

    .prologue
    .line 804
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 808
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 809
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 814
    :goto_0
    return-object v0

    .line 811
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 821
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    .line 825
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateThumbnail"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Canvas;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 826
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 831
    :goto_0
    return v0

    .line 828
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 838
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 842
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateView"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/util/AttributeSet;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 843
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 848
    :goto_0
    return-object v0

    .line 845
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 440
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 441
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 855
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 859
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 860
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 871
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 875
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyDown"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 876
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 881
    :goto_0
    return v0

    .line 878
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 888
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 892
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyLongPress"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 893
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 898
    :goto_0
    return v0

    .line 895
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 909
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyMultiple"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 910
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 915
    :goto_0
    return v0

    .line 912
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 922
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 926
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyUp"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 927
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 932
    :goto_0
    return v0

    .line 929
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 511
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 512
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 939
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 943
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuItemSelected"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 944
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 949
    :goto_0
    return v0

    .line 946
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 956
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 960
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuOpened"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 961
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 966
    :goto_0
    return v0

    .line 963
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 540
    .line 541
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 547
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 548
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    .line 974
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 978
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onOptionsItemSelected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MenuItem;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 979
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 984
    :goto_0
    return v0

    .line 981
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    .line 991
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 995
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onOptionsMenuClosed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 996
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1007
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1011
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPanelClosed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/Menu;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1012
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 389
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 392
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 1240
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1244
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1245
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 1256
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1260
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1261
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1276
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/R$id;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Dialog;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1277
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1292
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/R$id;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Dialog;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1293
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

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    .line 1023
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1027
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareOptionsMenu"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1028
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1033
    :goto_0
    return v0

    .line 1030
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 1044
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPreparePanel"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/view/Menu;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1045
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1050
    :goto_0
    return v0

    .line 1047
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 371
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 374
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 1304
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1308
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1309
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    return-void

    .line 1311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 407
    :try_start_0
    sget-boolean v0, Lcom/adobe/air/GamePreviewAppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 410
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1061
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRetainNonConfigurationInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1062
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1067
    :goto_0
    return-object v0

    .line 1064
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 1320
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1324
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1325
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    return-void

    .line 1327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 1078
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onSearchRequested"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1079
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1084
    :goto_0
    return v0

    .line 1081
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 363
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 425
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 426
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1336
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1340
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onTitleChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1341
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 1091
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1095
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTouchEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1096
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1101
    :goto_0
    return v0

    .line 1098
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 1108
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1112
    :try_start_0
    sget-object v1, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTrackballEvent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1113
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1119
    :goto_0
    return v0

    .line 1116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 3

    .prologue
    .line 1126
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1130
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserInteraction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1131
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 1352
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1356
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserLeaveHint"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1357
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .parameter

    .prologue
    .line 1142
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1146
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowAttributesChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1147
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1158
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1162
    :try_start_0
    sget-object v0, Lcom/adobe/air/GamePreviewAppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowFocusChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1163
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    goto :goto_0
.end method
