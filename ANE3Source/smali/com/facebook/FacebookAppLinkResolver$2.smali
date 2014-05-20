.class Lcom/facebook/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field private final synthetic val$appLinkResults:Ljava/util/Map;

.field private final synthetic val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

.field private final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 19
    .parameter "response"

    .prologue
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v4

    .line 123
    .local v4, error:Lcom/facebook/FacebookRequestError;
    if-eqz v4, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 170
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v8

    .line 129
    .local v8, responseObject:Lcom/facebook/model/GraphObject;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v16

    move-object/from16 v7, v16

    .line 130
    .local v7, responseJson:Lorg/json/JSONObject;
    :goto_1
    if-nez v7, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v7           #responseJson:Lorg/json/JSONObject;
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v7, v16

    goto :goto_1

    .line 135
    .restart local v7       #responseJson:Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/Task$TaskCompletionSource;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 136
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, uriString:Ljava/lang/String;
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 141
    const/4 v14, 0x0

    .line 143
    .local v14, urlData:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 144
    const-string v17, "android"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 146
    .local v6, rawTargets:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 147
    .local v11, targetsCount:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v10, targets:Ljava/util/List;,"Ljava/util/List<Lbolts/AppLink$Target;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-lt v5, v11, :cond_5

    .line 156
    #calls: Lcom/facebook/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    invoke-static {v12, v14}, Lcom/facebook/FacebookAppLinkResolver;->access$1(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v15

    .line 157
    .local v15, webFallbackUrl:Landroid/net/Uri;
    new-instance v3, Lbolts/AppLink;

    invoke-direct {v3, v12, v10, v15}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 159
    .local v3, appLink:Lbolts/AppLink;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    move-object/from16 v17, v0

    #getter for: Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/facebook/FacebookAppLinkResolver;->access$2(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    move-object/from16 v18, v0

    #getter for: Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/facebook/FacebookAppLinkResolver;->access$2(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    monitor-exit v17

    goto :goto_2

    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v18

    .line 163
    .end local v3           #appLink:Lbolts/AppLink;
    .end local v5           #i:I
    .end local v6           #rawTargets:Lorg/json/JSONArray;
    .end local v10           #targets:Ljava/util/List;,"Ljava/util/List<Lbolts/AppLink$Target;>;"
    .end local v11           #targetsCount:I
    .end local v15           #webFallbackUrl:Landroid/net/Uri;
    :catch_0
    move-exception v17

    goto :goto_2

    .line 150
    .restart local v5       #i:I
    .restart local v6       #rawTargets:Lorg/json/JSONArray;
    .restart local v10       #targets:Ljava/util/List;,"Ljava/util/List<Lbolts/AppLink$Target;>;"
    .restart local v11       #targetsCount:I
    :cond_5
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    #calls: Lcom/facebook/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    invoke-static/range {v17 .. v17}, Lcom/facebook/FacebookAppLinkResolver;->access$0(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v9

    .line 151
    .local v9, target:Lbolts/AppLink$Target;
    if-eqz v9, :cond_6

    .line 152
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method
