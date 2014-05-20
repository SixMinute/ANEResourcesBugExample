.class public Lcom/adobe/air/ResourceIdMap;
.super Ljava/lang/Object;
.source "ResourceIdMap.java"


# static fields
.field private static s_resourceMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_resourceIds:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, resourceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/adobe/air/ResourceIdMap;->init(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "resourceClass"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/air/ResourceIdMap;->init(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 17
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Class not found:  %s%n%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private static gatherResourceInfo(Ljava/lang/Class;Ljava/util/Hashtable;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, resourceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, resourceIds:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object p0

    .line 50
    .local p0, clss:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/Class;
    array-length v6, p0

    .local v6, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .end local v6           #len$:I
    .end local p0           #arr$:[Ljava/lang/Class;
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, p0, v5

    .line 52
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, clsName:Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 54
    .local v2, indexOfDollarSign:I
    if-lez v2, :cond_3

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 58
    .end local v0           #clsName:Ljava/lang/String;
    .local v2, clsName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 59
    .local v0, fields:[Ljava/lang/reflect/Field;
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .end local v5           #i$:I
    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v3, v0, v4

    .line 63
    .local v3, f:Ljava/lang/reflect/Field;
    :try_start_0
    const-string v8, "%s.%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, rscKey:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 66
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v3           #f:Ljava/lang/reflect/Field;
    const-string v9, "Did not add duplicate resource key %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 59
    .end local v8           #rscKey:Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i$:I
    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .line 71
    .local v3, f:Ljava/lang/reflect/Field;
    .restart local v8       #rscKey:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .end local v3           #f:Ljava/lang/reflect/Field;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 74
    .end local v8           #rscKey:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 76
    .local v3, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    const-string v8, "IllegalArgumentException"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 78
    :catch_1
    move-exception v3

    .line 80
    .local v3, e:Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v3           #e:Ljava/lang/IllegalAccessException;
    const-string v8, "IllegalAccessException"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_3

    .line 50
    :cond_1
    add-int/lit8 v0, v5, 0x1

    .end local v4           #i$:I
    .local v0, i$:I
    move v5, v0

    .end local v0           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 84
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsName:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_2
    return-void

    .local v0, clsName:Ljava/lang/String;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v2, indexOfDollarSign:I
    :cond_3
    move-object v2, v0

    .end local v0           #clsName:Ljava/lang/String;
    .local v2, clsName:Ljava/lang/String;
    goto :goto_1
.end method

.method private init(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, resourceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/adobe/air/ResourceIdMap;->s_resourceMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/adobe/air/ResourceIdMap;->s_resourceMap:Ljava/util/Hashtable;

    .line 32
    :cond_0
    sget-object v0, Lcom/adobe/air/ResourceIdMap;->s_resourceMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    .line 35
    iget-object v0, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/adobe/air/ResourceIdMap;->gatherResourceInfo(Ljava/lang/Class;Ljava/util/Hashtable;)V

    .line 36
    sget-object v0, Lcom/adobe/air/ResourceIdMap;->s_resourceMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/adobe/air/ResourceIdMap;->s_resourceMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    goto :goto_0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)I
    .locals 2
    .parameter "resourceString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, internedResourceString:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/ResourceIdMap;->m_resourceIds:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
