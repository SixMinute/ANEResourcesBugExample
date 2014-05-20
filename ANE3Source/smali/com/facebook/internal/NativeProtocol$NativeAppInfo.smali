.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# static fields
.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL_HASH:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->buildAppSignatureHashes()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method

.method private static buildAppSignatureHashes()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 187
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method


# virtual methods
.method protected abstract getPackage()Ljava/lang/String;
.end method

.method public validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 195
    .local v1, brand:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 196
    .local v0, applicationFlags:I
    const-string v6, "generic"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_0

    move v6, v11

    .line 216
    :goto_0
    return v6

    .line 201
    :cond_0
    const/4 v4, 0x0

    .line 203
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 204
    const/16 v7, 0x40

    .line 203
    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 209
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    move v8, v10

    :goto_1
    if-lt v8, v7, :cond_1

    move v6, v10

    .line 216
    goto :goto_0

    .line 205
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v10

    .line 206
    goto :goto_0

    .line 209
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    aget-object v5, v6, v8

    .line 210
    .local v5, signature:Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, hashedSignature:Ljava/lang/String;
    sget-object v9, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v11

    .line 212
    goto :goto_0

    .line 209
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
