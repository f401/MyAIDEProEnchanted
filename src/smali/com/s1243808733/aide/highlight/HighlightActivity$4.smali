.class Lcom/s1243808733/aide/highlight/HighlightActivity$4;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$4;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compresscolor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    .line 205
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$4;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/highlight/Item;

    .line 208
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/s1243808733/aide/highlight/HighlightActivity$4;->compresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0, v4}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$4;->compresscolor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->gzip([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return v4
.end method
