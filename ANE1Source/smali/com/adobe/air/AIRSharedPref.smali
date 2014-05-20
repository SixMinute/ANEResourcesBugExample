.class public final Lcom/adobe/air/AIRSharedPref;
.super Ljava/lang/Object;
.source "AIRSharedPref.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRSharedPref"

.field private static SP_CONFIG_DATA:Ljava/lang/String;

.field private static SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

.field private static SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

.field private static SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "AIRSharedPref.ConfigRequestTime"

    sput-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    .line 40
    const-string v0, "AIRSharedPref.ConfigData"

    sput-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA:Ljava/lang/String;

    .line 41
    const-string v0, "\n"

    sput-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigData(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    .line 109
    :try_start_0
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA:Ljava/lang/String;

    sget-object v3, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA_DEFAULT:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 132
    :cond_0
    return-object v0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getConfigRequestTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

    sget-object v3, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME_DEFAULT:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 89
    :cond_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getPreferencesKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AIRSharedPref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setConfigData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_DATA:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setConfigRequestTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/adobe/air/AIRSharedPref;->getPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/adobe/air/AIRSharedPref;->SP_CONFIG_REQUEST_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
