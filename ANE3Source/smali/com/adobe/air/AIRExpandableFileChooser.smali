.class public Lcom/adobe/air/AIRExpandableFileChooser;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;,
        Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;
    }
.end annotation


# static fields
.field private static final FILEINFO:Ljava/lang/String; = "FILEINFO"

.field public static final TAG:Ljava/lang/String; = null

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final USER_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final USER_ACTION_DONE:Ljava/lang/String; = "done"


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAllowMultiple:Z

.field private mCheckedFiles:Landroid/util/SparseBooleanArray;

.field private mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

.field private mFileChooserStub:Lcom/adobe/air/FileChooserStub;

.field private final mFileProjection:[Ljava/lang/String;

.field private mFileSaveName:Landroid/widget/EditText;

.field private mFilenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMultipleFileSelectionView:Landroid/view/View;

.field private mRuntimeInflater:Landroid/view/LayoutInflater;

.field private mRuntimeResources:Landroid/content/res/Resources;

.field private mSave:Z

.field private mSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AIRExpandableFileChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/adobe/air/FileChooserStub;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v6, "*"

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mMultipleFileSelectionView:Landroid/view/View;

    .line 53
    iput-boolean v7, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    .line 54
    iput-boolean v7, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    .line 55
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v7

    const-string v1, "_display_name"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    .line 62
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    .line 64
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    .line 65
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    .line 275
    iput-boolean p2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    .line 276
    iput-boolean p3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    .line 277
    iput-object p5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    .line 281
    if-nez p1, :cond_7

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const-string v1, "*"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 286
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v7

    .line 288
    :goto_1
    if-ge v3, v2, :cond_0

    .line 290
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    const-string v4, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 303
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 305
    new-instance v0, Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adobe/air/AndroidAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    .line 306
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 307
    new-instance v0, Lcom/adobe/air/AIRExpandableFileChooser$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRExpandableFileChooser$1;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getRuntimeContext()Landroid/content/Context;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    .line 322
    const-string v0, "main"

    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, v3, v4}, Lcom/adobe/air/utils/Utils;->GetLayoutViewFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v3

    .line 324
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 328
    const-string v0, "list"

    invoke-static {v0, v4, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 332
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v5, 0x1020004

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 334
    const-string v1, "file_save_panel"

    invoke-static {v1, v4, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 335
    iget-boolean v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    if-eqz v5, :cond_5

    .line 337
    const-string v5, "file_download"

    iget-object v6, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v5, v6}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    const-string v1, "file_save_name"

    invoke-static {v1, v4, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    .line 343
    if-eqz p4, :cond_1

    .line 344
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/air/utils/Utils;->GetExternalStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$2;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$2;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 372
    const-string v1, "file_save_button"

    invoke-static {v1, v4, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 373
    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$3;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$3;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :goto_2
    const-string v1, "audio_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    .line 399
    const-string v1, "image_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    const-string v1, "video_files"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/AIRExpandableFileChooser;->AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 404
    new-instance v1, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2, v5}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserExpandableListAdapter;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 405
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 406
    invoke-virtual {v0, v8}, Landroid/widget/ExpandableListView;->setItemsCanFocus(Z)V

    .line 407
    const-string v0, "empty"

    invoke-static {v0, v4, v3}, Lcom/adobe/air/utils/Utils;->GetWidgetInViewByName(Ljava/lang/String;Landroid/content/res/Resources;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 408
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :goto_3
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V

    .line 417
    :cond_2
    return-void

    .line 298
    :cond_3
    iget-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    .line 300
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_display_name LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    .line 288
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 395
    :cond_5
    const-string v5, "file_upload"

    iget-object v6, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v5, v6}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 412
    :cond_6
    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move-object v1, p1

    goto/16 :goto_0
.end method

.method private AddMediaSubtree(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 545
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileProjection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v3, v4

    :goto_0
    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 554
    const-string v3, "TYPE"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v3, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    const-string v3, "_display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 563
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v4, "FILEINFO"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 567
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_1
    return-void

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSelection:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0
.end method

.method private HideVirtualKeyboard(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 574
    if-eqz p0, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 578
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AIRExpandableFileChooser;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRExpandableFileChooser;->expandableListPositionToFlatPosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AndroidAlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/air/AIRExpandableFileChooser;->uncheckAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRExpandableFileChooser;->HideVirtualKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private createInvisibleMultipleFileSelectionView()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 507
    const-string v1, "button_ok"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$4;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    const-string v1, "button_cancel"

    iget-object v2, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mRuntimeResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->GetResourceStringFromRuntime(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AIRExpandableFileChooser$5;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRExpandableFileChooser$5;-><init>(Lcom/adobe/air/AIRExpandableFileChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    return-void
.end method

.method private expandableListPositionToFlatPosition(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 464
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 480
    :goto_0
    return v0

    .line 469
    :cond_1
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 472
    goto :goto_0

    :cond_3
    move v1, v2

    .line 476
    :goto_1
    if-ge v1, p1, :cond_4

    .line 477
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 476
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 478
    :cond_4
    add-int v0, v2, p2

    .line 480
    goto :goto_0
.end method

.method private uncheckAll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 486
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez v0, :cond_1

    .line 501
    :cond_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    .line 490
    :goto_0
    if-ge v2, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v6

    .line 493
    :goto_1
    if-ge v4, v3, :cond_3

    .line 495
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 496
    const-string v5, "FILEINFO"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mParent:Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    .line 497
    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->uncheck()V

    .line 493
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 490
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public GetDialog()Lcom/adobe/air/AndroidAlertDialog;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    return-object v0
.end method

.method public GetFileNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "FILEINFO"

    .line 422
    instance-of v0, p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    .line 425
    :cond_0
    check-cast p2, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;

    .line 439
    iget-boolean v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAllowMultiple:Z

    if-nez v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 442
    iget-boolean v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mSave:Z

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;

    const-string v2, "FILEINFO"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;

    const-string v2, "FILEINFO"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->dismiss()V

    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/air/AIRExpandableFileChooser$FileChooserItem;->toggle()V

    goto :goto_1
.end method
