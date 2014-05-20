.class Lcom/facebook/widget/GraphObjectAdapter;
.super Landroid/widget/BaseAdapter;
.source "GraphObjectAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;,
        Lcom/facebook/widget/GraphObjectAdapter$Filter;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;,
        Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;,
        Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;,
        Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I = null

#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTIVITY_CIRCLE_VIEW_TYPE:I = 0x2

.field private static final DISPLAY_SECTIONS_THRESHOLD:I = 0x1

.field private static final GRAPH_OBJECT_VIEW_TYPE:I = 0x1

.field private static final HEADER_VIEW_TYPE:I = 0x0

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MAX_PREFETCHED_PICTURES:I = 0x14

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Lcom/facebook/widget/GraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

.field private displaySections:Z

.field private filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsBySection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private groupByField:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedPictureCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchedProfilePictureIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckbox:Z

.field private showPicture:Z

.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/widget/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->values()[Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/widget/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    .line 48
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/GraphObjectAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private callOnErrorListener(Ljava/lang/Exception;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 764
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    if-eqz v2, :cond_1

    .line 765
    instance-of v2, p1, Lcom/facebook/FacebookException;

    if-nez v2, :cond_0

    .line 766
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .end local p1
    .local v1, exception:Ljava/lang/Exception;
    move-object p1, v1

    .line 768
    .end local v1           #exception:Ljava/lang/Exception;
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    move-object v0, p1

    check-cast v0, Lcom/facebook/FacebookException;

    move-object v2, v0

    invoke-interface {v3, p0, v2}, Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;->onError(Lcom/facebook/widget/GraphObjectAdapter;Lcom/facebook/FacebookException;)V

    .line 770
    :cond_1
    return-void
.end method

.method private static compareGraphObjects(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;Ljava/util/Collection;Ljava/text/Collator;)I
    .locals 6
    .parameter "a"
    .parameter "b"
    .parameter
    .parameter "collator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObject;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/text/Collator;",
            ")I"
        }
    .end annotation

    .prologue
    .line 801
    .local p2, sortFields:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 814
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 801
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, sortField:Ljava/lang/String;
    invoke-interface {p0, v3}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 803
    .local v1, sa:Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    .local v2, sb:Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 806
    invoke-virtual {p3, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, result:I
    if-eqz v0, :cond_0

    move v4, v0

    .line 808
    goto :goto_0

    .line 810
    .end local v0           #result:I
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    .line 811
    :cond_3
    if-nez v1, :cond_4

    const/4 v4, -0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V
    .locals 5
    .parameter "profileId"
    .parameter "pictureURI"
    .parameter "imageView"

    .prologue
    .line 729
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    if-nez p2, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    if-nez p3, :cond_4

    const/4 v3, 0x1

    move v2, v3

    .line 738
    .local v2, prefetching:Z
    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 739
    :cond_2
    if-nez v2, :cond_3

    .line 742
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getDefaultPicture()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    :cond_3
    new-instance v3, Lcom/facebook/internal/ImageRequest$Builder;

    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    .line 747
    invoke-virtual {v3, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v3

    .line 749
    new-instance v4, Lcom/facebook/widget/GraphObjectAdapter$2;

    invoke-direct {v4, p0, p1, p3}, Lcom/facebook/widget/GraphObjectAdapter$2;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 748
    invoke-virtual {v3, v4}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v0

    .line 756
    .local v0, builder:Lcom/facebook/internal/ImageRequest$Builder;
    invoke-virtual {v0}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object v1

    .line 757
    .local v1, newRequest:Lcom/facebook/internal/ImageRequest;
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    goto :goto_0

    .line 737
    .end local v0           #builder:Lcom/facebook/internal/ImageRequest$Builder;
    .end local v1           #newRequest:Lcom/facebook/internal/ImageRequest;
    .end local v2           #prefetching:Z
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method private getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 308
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    move-object v1, p1

    .line 310
    .local v1, result:Landroid/view/View;
    if-nez v1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/android/R$layout;->com_facebook_picker_activity_circle_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 313
    :cond_0
    sget v2, Lcom/facebook/android/R$id;->com_facebook_picker_row_activity_circle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 314
    .local v0, activityCircle:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    return-object v1
.end method

.method private processImageResponse(Lcom/facebook/internal/ImageResponse;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .parameter "response"
    .parameter "graphObjectId"
    .parameter "imageView"

    .prologue
    .line 773
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 775
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/widget/GraphObjectAdapter;->callOnErrorListener(Ljava/lang/Exception;)V

    .line 778
    :cond_0
    if-nez p3, :cond_3

    .line 780
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 782
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 784
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 785
    .local v2, oldestId:Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .end local v2           #oldestId:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_2
    :goto_0
    return-void

    .line 789
    :cond_3
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 791
    .local v1, error:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 794
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private rebuildSections()V
    .locals 9

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 449
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 450
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 451
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 452
    iput-boolean v8, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    .line 454
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v5}, Lcom/facebook/widget/GraphObjectCursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v2, 0x0

    .line 459
    .local v2, objectsAdded:I
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v5}, Lcom/facebook/widget/GraphObjectCursor;->moveToFirst()Z

    .line 461
    :cond_2
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v5}, Lcom/facebook/widget/GraphObjectCursor;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 463
    .local v1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->filterIncludesItem(Lcom/facebook/model/GraphObject;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 478
    :goto_1
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v5}, Lcom/facebook/widget/GraphObjectCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 480
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 481
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 482
    .local v0, collator:Ljava/text/Collator;
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 492
    .end local v0           #collator:Ljava/text/Collator;
    :cond_3
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_7

    if-le v2, v7, :cond_7

    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    goto :goto_0

    .line 467
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 469
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, sectionKeyOfItem:Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 471
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_5
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 475
    .local v3, section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 482
    .end local v3           #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v4           #sectionKeyOfItem:Ljava/lang/String;
    .restart local v0       #collator:Ljava/text/Collator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 483
    .restart local v3       #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v6, Lcom/facebook/widget/GraphObjectAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/facebook/widget/GraphObjectAdapter$1;-><init>(Lcom/facebook/widget/GraphObjectAdapter;Ljava/text/Collator;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .end local v0           #collator:Ljava/text/Collator;
    .end local v3           #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_7
    move v5, v8

    .line 494
    goto :goto_3
.end method

.method private shouldShowActivityCircleCell()Z
    .locals 1

    .prologue
    .line 445
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 609
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    return v0
.end method

.method public changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, cursor:Lcom/facebook/widget/GraphObjectCursor;,"Lcom/facebook/widget/GraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-ne v0, p1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectCursor;->close()V

    .line 170
    :cond_1
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildAndNotify()V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 328
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 330
    .local v4, result:Landroid/view/View;
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 331
    .local v1, checkboxStub:Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v5

    if-nez v5, :cond_1

    .line 333
    invoke-virtual {v1, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 340
    :cond_0
    :goto_0
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_profile_pic_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 341
    .local v3, profilePicStub:Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    move-result v5

    if-nez v5, :cond_2

    .line 342
    invoke-virtual {v3, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 348
    :goto_1
    return-object v4

    .line 335
    .end local v3           #profilePicStub:Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 336
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0, v0, v8}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    goto :goto_0

    .line 344
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .restart local v3       #profilePicStub:Landroid/view/ViewStub;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 345
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    invoke-interface {v0, p1}, Lcom/facebook/widget/GraphObjectAdapter$Filter;->includeItem(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v3, 0x0

    .line 588
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 604
    :goto_0
    return v2

    .line 594
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v0, v2

    .line 595
    .local v0, count:I
    :goto_1
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 600
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->shouldShowActivityCircleCell()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v2, v0

    .line 604
    goto :goto_0

    .end local v0           #count:I
    :cond_2
    move v0, v3

    .line 594
    goto :goto_1

    .line 595
    .restart local v0       #count:I
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 596
    .local v1, section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2
.end method

.method public getCursor()Lcom/facebook/widget/GraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    return-object v0
.end method

.method public getDataNeededListener()Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;
    .locals 1

    .prologue
    .line 144
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    return-object v0
.end method

.method protected getDefaultPicture()I
    .locals 1

    .prologue
    .line 324
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    return v0
.end method

.method getFilter()Lcom/facebook/widget/GraphObjectAdapter$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    return-object v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_picker_list_row:I

    return v0
.end method

.method protected getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    move-object v0, p2

    .line 299
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;

    move-result-object v0

    .line 303
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V

    .line 304
    return-object v0
.end method

.method public getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 715
    .local v2, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 717
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 718
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 725
    return-object v3

    .line 718
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    .local v1, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 720
    .local v0, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGroupByField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    return-object v0
.end method

.method getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const-string v3, "id"

    .line 399
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "id"

    invoke-interface {p1, v3}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, obj:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Ljava/lang/String;

    .end local v0           #obj:Ljava/lang/Object;
    return-object v0

    .line 405
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Received an object without an ID."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 625
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 626
    .local v0, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 634
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v1

    .line 635
    .local v1, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v2, :cond_0

    .line 636
    iget-object v2, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 638
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 641
    .end local v0           #id:Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 651
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 652
    .local v0, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-static {}, Lcom/facebook/widget/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 660
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :pswitch_0
    const/4 v1, 0x0

    .line 658
    :goto_0
    return v1

    .line 656
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 658
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getOnErrorListener()Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    return-object v0
.end method

.method getPictureFieldSpecifier()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v4, 0x0

    .line 430
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/model/GraphObject;)Landroid/view/View;

    move-result-object v2

    .line 431
    .local v2, view:Landroid/view/View;
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 432
    .local v1, picture:Landroid/widget/ImageView;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 438
    :goto_0
    return-object v3

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 438
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const-string v3, "picture.height(%d).width(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const/4 v4, 0x0

    .line 264
    .local v4, uri:Ljava/lang/String;
    const-string v5, "picture"

    invoke-interface {p1, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 266
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 275
    .end local v3           #o:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 277
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    return-object v5

    .line 267
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 268
    check-cast v3, Lorg/json/JSONObject;

    .end local v3           #o:Ljava/lang/Object;
    invoke-static {v3}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v5

    const-class v6, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    invoke-interface {v5, v6}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;

    .line 269
    .local v2, itemPicture:Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;,"Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;"
    invoke-interface {v2}, Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;->getData()Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;

    move-result-object v1

    .line 270
    .local v1, data:Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;,"Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;"
    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 278
    .end local v1           #data:Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;,"Lcom/facebook/widget/GraphObjectAdapter$ItemPictureData;"
    .end local v2           #itemPicture:Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;,"Lcom/facebook/widget/GraphObjectAdapter$ItemPicture;"
    :catch_0
    move-exception v5

    .line 281
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I
    .locals 7
    .parameter "sectionKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p2, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const/4 v6, -0x1

    .line 545
    const/4 v2, 0x0

    .line 546
    .local v2, position:I
    const/4 v0, 0x0

    .line 550
    .local v0, found:Z
    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 562
    :goto_1
    if-nez v0, :cond_3

    move v4, v6

    .line 577
    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :goto_2
    return v4

    .line 550
    .restart local p0       #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, key:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v4, :cond_1

    .line 552
    add-int/lit8 v2, v2, 0x1

    .line 554
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    const/4 v0, 0x1

    .line 556
    goto :goto_1

    .line 558
    :cond_2
    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 564
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_5

    .line 567
    iget-boolean v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    sub-int v4, v2, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 571
    :cond_5
    iget-object v4, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    move v4, v6

    .line 577
    goto :goto_2

    .line 571
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/model/GraphObject;

    .line 572
    .local v3, t:Lcom/facebook/model/GraphObject;,"TT;"
    invoke-static {v3, p2}, Lcom/facebook/model/GraphObject$Factory;->hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v2

    .line 573
    goto :goto_2

    .line 575
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v2, 0x0

    .line 694
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 696
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    move-result v0

    .line 700
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;
    .locals 8
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v7, 0x0

    .line 498
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v7

    .line 538
    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :goto_0
    return-object v5

    .line 501
    .restart local p0       #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :cond_0
    const/4 v4, 0x0

    .line 502
    .local v4, sectionKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 504
    .local v0, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    iget-boolean v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-nez v5, :cond_5

    .line 505
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #sectionKey:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 506
    .restart local v4       #sectionKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 507
    .local v3, section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-ltz p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_2

    .line 508
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 536
    .end local v3           #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v0       #graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    .line 538
    new-instance v5, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v5, v4, v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    goto :goto_0

    .line 511
    .restart local v3       #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local p0       #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :cond_2
    sget-boolean v5, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v5}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 513
    :cond_4
    new-instance v5, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v5, v7, v7}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/model/GraphObject;)V

    goto :goto_0

    .line 518
    .end local v3           #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_5
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    .end local p1
    .local v2, position:I
    if-nez p1, :cond_6

    .line 521
    move-object v4, v1

    move p1, v2

    .line 522
    .end local v2           #position:I
    .restart local p1
    goto :goto_1

    .line 525
    .end local p1
    .restart local v2       #position:I
    :cond_6
    iget-object v6, p0, Lcom/facebook/widget/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 526
    .restart local v3       #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 528
    move-object v4, v1

    .line 529
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    check-cast v0, Lcom/facebook/model/GraphObject;

    .restart local v0       #graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    move p1, v2

    .line 530
    .end local v2           #position:I
    .restart local p1
    goto :goto_1

    .line 533
    .end local p1
    .restart local v2       #position:I
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int p1, v2, v6

    .end local v2           #position:I
    .restart local p1
    goto :goto_2

    .line 540
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #section:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    :cond_8
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v4, 0x0

    .line 705
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 706
    .local v0, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v1, v2, :cond_0

    .line 708
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    iget-object v2, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 710
    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method protected getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "sectionHeader"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 285
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 287
    .local v1, result:Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 288
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/android/R$layout;->com_facebook_picker_list_section_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #result:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 291
    .restart local v1       #result:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-object v1
.end method

.method protected getSectionKeyOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const/4 v0, 0x0

    .line 244
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 246
    .restart local v0       #result:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 247
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 685
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 688
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getShowCheckbox()Z
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    return v0
.end method

.method public getShowPicture()Z
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    return v0
.end method

.method public getSortFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 666
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 668
    .local v0, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-static {}, Lcom/facebook/widget/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$widget$GraphObjectAdapter$SectionAndItem$Type()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 679
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :pswitch_0
    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 677
    :goto_0
    return-object v1

    .line 672
    :pswitch_1
    iget-object v1, v0, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectView(Lcom/facebook/model/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 675
    :pswitch_2
    sget-boolean v1, Lcom/facebook/widget/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->cursor:Lcom/facebook/widget/GraphObjectCursor;

    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    invoke-interface {v1}, Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;->onDataNeeded()V

    .line 677
    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/GraphObjectAdapter;->getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 646
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 614
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 583
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 619
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 620
    .local v0, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "graphObjectId"

    .prologue
    .line 421
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected populateGraphObjectView(Landroid/view/View;Lcom/facebook/model/GraphObject;)V
    .locals 10
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p2, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 356
    .local v7, title:Ljava/lang/CharSequence;
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 357
    .local v8, titleView:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 358
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 361
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 362
    .local v5, subtitle:Ljava/lang/CharSequence;
    sget v9, Lcom/facebook/android/R$id;->picker_subtitle:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 363
    .local v6, subtitleView:Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 364
    if-eqz v5, :cond_4

    .line 365
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 366
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 373
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 374
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->isGraphObjectSelected(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p0, v0, v9}, Lcom/facebook/widget/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    .line 377
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getShowPicture()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 378
    invoke-virtual {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;

    move-result-object v2

    .line 380
    .local v2, pictureURI:Ljava/net/URI;
    if-eqz v2, :cond_3

    .line 381
    sget v9, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 384
    .local v3, profilePic:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 385
    iget-object v9, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedPictureCache:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/ImageResponse;

    .line 386
    .local v4, response:Lcom/facebook/internal/ImageResponse;
    invoke-virtual {v4}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    invoke-virtual {v4}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 393
    .end local v2           #pictureURI:Ljava/net/URI;
    .end local v3           #profilePic:Landroid/widget/ImageView;
    .end local v4           #response:Lcom/facebook/internal/ImageResponse;
    :cond_3
    :goto_1
    return-void

    .line 368
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 389
    .restart local v2       #pictureURI:Ljava/net/URI;
    .restart local v3       #profilePic:Landroid/widget/ImageView;
    :cond_5
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public prioritizeViewRange(III)V
    .locals 13
    .parameter "firstVisibleItem"
    .parameter "lastVisibleItem"
    .parameter "prefetchBuffer"

    .prologue
    .line 182
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    if-lt p2, p1, :cond_0

    iget-object v10, p0, Lcom/facebook/widget/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 239
    :cond_0
    return-void

    .line 196
    :cond_1
    move v4, p2

    .local v4, i:I
    :goto_0
    if-gez v4, :cond_3

    .line 209
    const/4 v10, 0x0

    sub-int v11, p1, p3

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 210
    .local v8, start:I
    add-int v10, p2, p3

    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    .local v1, end:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, graphObjectsToPrefetchPicturesFor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    move v4, v8

    :goto_1
    if-lt v4, p1, :cond_5

    .line 219
    add-int/lit8 v4, p2, 0x1

    :goto_2
    if-le v4, v1, :cond_7

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/GraphObject;

    .line 226
    .local v2, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureUriOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/net/URI;

    move-result-object v9

    .line 227
    .local v9, uri:Ljava/net/URI;
    invoke-virtual {p0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, id:Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    .local v0, alreadyPrefetching:Z
    iget-object v11, p0, Lcom/facebook/widget/GraphObjectAdapter;->prefetchedProfilePictureIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    if-nez v0, :cond_2

    .line 236
    const/4 v11, 0x0

    invoke-direct {p0, v5, v9, v11}, Lcom/facebook/widget/GraphObjectAdapter;->downloadProfilePicture(Ljava/lang/String;Ljava/net/URI;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 197
    .end local v0           #alreadyPrefetching:Z
    .end local v1           #end:I
    .end local v2           #graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    .end local v3           #graphObjectsToPrefetchPicturesFor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v5           #id:Ljava/lang/String;
    .end local v8           #start:I
    .end local v9           #uri:Ljava/net/URI;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v7

    .line 198
    .local v7, sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v10, :cond_4

    .line 199
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, v10}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .restart local v5       #id:Ljava/lang/String;
    iget-object v10, p0, Lcom/facebook/widget/GraphObjectAdapter;->pendingRequests:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/internal/ImageRequest;

    .line 201
    .local v6, request:Lcom/facebook/internal/ImageRequest;
    if-eqz v6, :cond_4

    .line 202
    invoke-static {v6}, Lcom/facebook/internal/ImageDownloader;->prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V

    .line 196
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #request:Lcom/facebook/internal/ImageRequest;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 214
    .end local v7           #sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    .restart local v1       #end:I
    .restart local v3       #graphObjectsToPrefetchPicturesFor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v8       #start:I
    :cond_5
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v7

    .line 215
    .restart local v7       #sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v10, :cond_6

    .line 216
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v7           #sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    :cond_7
    invoke-virtual {p0, v4}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v7

    .line 221
    .restart local v7       #sectionAndItem:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;,"Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v10, :cond_8

    .line 222
    iget-object v10, v7, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public rebuildAndNotify()V
    .locals 0

    .prologue
    .line 177
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    invoke-direct {p0}, Lcom/facebook/widget/GraphObjectAdapter;->rebuildSections()V

    .line 178
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method public setDataNeededListener(Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;,"Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/widget/GraphObjectAdapter$DataNeededListener;

    .line 149
    return-void
.end method

.method setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectAdapter$Filter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;,"Lcom/facebook/widget/GraphObjectAdapter$Filter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->filter:Lcom/facebook/widget/GraphObjectAdapter$Filter;

    .line 418
    return-void
.end method

.method public setGroupByField(Ljava/lang/String;)V
    .locals 0
    .parameter "groupByField"

    .prologue
    .line 124
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;,"Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->onErrorListener:Lcom/facebook/widget/GraphObjectAdapter$OnErrorListener;

    .line 157
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 0
    .parameter "showCheckbox"

    .prologue
    .line 140
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showCheckbox:Z

    .line 141
    return-void
.end method

.method public setShowPicture(Z)V
    .locals 0
    .parameter "showPicture"

    .prologue
    .line 132
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->showPicture:Z

    .line 133
    return-void
.end method

.method public setSortFields(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    .local p1, sortFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectAdapter;->sortFields:Ljava/util/List;

    .line 117
    return-void
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0
    .parameter "checkBox"
    .parameter "graphObjectSelected"

    .prologue
    .line 426
    .local p0, this:Lcom/facebook/widget/GraphObjectAdapter;,"Lcom/facebook/widget/GraphObjectAdapter<TT;>;"
    return-void
.end method
