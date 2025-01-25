.class Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;
.super Ljava/lang/Object;
.source "CompletionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/completion/CompletionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiVersionTask"
.end annotation


# instance fields
.field apiInfoTv:Landroid/widget/TextView;

.field apiInfoView:Landroid/view/View;

.field sourceEntity:Lcom/aide/engine/SourceEntity;

.field final tag:Ljava/lang/Object;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aide/engine/SourceEntity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Object;Landroid/view/View;)V
    .registers 7

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->sourceEntity:Lcom/aide/engine/SourceEntity;

    .line 236
    iput-object p2, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->type:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->apiInfoTv:Landroid/widget/TextView;

    .line 239
    iput-object p5, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->tag:Ljava/lang/Object;

    .line 240
    iput-object p6, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->apiInfoView:Landroid/view/View;

    return-void
.end method

.method private execute()Lcom/s1243808733/aide/completion/apiversion/ApiInfo;
    .registers 7

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x76d542ff

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2d

    const v2, 0x3e2b958

    if-eq v1, v2, :cond_23

    const v2, 0x40bb0da

    if-eq v1, v2, :cond_19

    goto :goto_37

    :cond_19
    const-string v1, "Field"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_23
    const-string v1, "Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    goto :goto_38

    :cond_2d
    const-string v1, "Method"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_8c

    if-eqz v0, :cond_37

    const/4 v0, 0x2

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, -0x1

    :goto_38
    if-eqz v0, :cond_7b

    const-string v1, "#"

    const-string v2, ".html#"

    if-eq v0, v4, :cond_61

    if-eq v0, v3, :cond_43

    goto :goto_8d

    .line 280
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v2, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/completion/apiversion/AVUtils;->methodsParamToSmali(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findApi(Ljava/lang/String;Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    return-object v0

    .line 273
    :cond_61
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findApi(Ljava/lang/String;Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    return-object v0

    .line 267
    :cond_7b
    iget-object v0, p0, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->url:Ljava/lang/String;

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/s1243808733/aide/completion/apiversion/ApiVersion;->findClass(Ljava/lang/String;)Lcom/s1243808733/aide/completion/apiversion/ClassApi;

    move-result-object v0
    :try_end_8b
    .catchall {:try_start_43 .. :try_end_8b} :catchall_8c

    return-object v0

    :catchall_8c
    move-exception v0

    :goto_8d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setTo(Landroid/widget/TextView;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V
    .registers 7

    .line 295
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCnFast()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->toString(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_63

    .line 297
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x555556

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_37
    invoke-virtual {p1}, Lcom/s1243808733/aide/completion/apiversion/ApiInfo;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 305
    invoke-static {}, Lcom/s1243808733/aide/completion/CompletionAdapter;->-$$Nest$sfgetsIDHolder()Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;

    move-result-object p1

    iget p1, p1, Lcom/s1243808733/aide/completion/CompletionAdapter$IDHolder;->completionEntryName:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 307
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result p1

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_63
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 245
    invoke-direct {p0}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;->execute()Lcom/s1243808733/aide/completion/apiversion/ApiInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 247
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask$1;-><init>(Lcom/s1243808733/aide/completion/CompletionAdapter$ApiVersionTask;Lcom/s1243808733/aide/completion/apiversion/ApiInfo;)V

    invoke-interface {v1, v2}, Lorg/xutils/common/TaskController;->post(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
