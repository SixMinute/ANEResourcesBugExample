.class public Lcom/adobe/air/AndroidLocale;
.super Ljava/lang/Object;
.source "AndroidLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidLocale$STRING_ID;
    }
.end annotation


# static fields
.field private static final ANDROID_LOCALE_TAG:Ljava/lang/String; = "AndroidLocale"

.field private static final LANG_ENGLISH:Ljava/lang/String; = "en"

.field private static final MAX_LOCALE_NAME_SIZE:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static GetLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v0, "en"

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 53
    const-string v0, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    .line 63
    goto :goto_0
.end method

.method public static GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/adobe/air/AndroidLocale$STRING_ID;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/adobe/air/AndroidLocale;->GetLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/AndroidLocale;->getLocalString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getLocalString(ILjava/lang/String;)Ljava/lang/String;
.end method
