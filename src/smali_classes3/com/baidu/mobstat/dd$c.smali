.class Lcom/baidu/mobstat/dd$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/baidu/mobstat/dd$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/baidu/mobstat/dd$c;Landroid/view/View;)V
    .registers 6

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    .line 189
    invoke-static {p1}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dd$c;->a:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/dd$c;->b:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {p1, p3}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    iput-object v0, p0, Lcom/baidu/mobstat/dd$c;->c:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    :goto_0
    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/dd$c;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object p0, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .registers 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/baidu/mobstat/dd$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/baidu/mobstat/dd$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    .line 223
    :goto_0
    if-eqz p0, :cond_1

    .line 226
    if-nez v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v5, "ListView"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "RecyclerView"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    const-string v5, "GridView"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    move v3, v1

    .line 235
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/dd$c;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object p0, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    iget-object v0, v0, Lcom/baidu/mobstat/dd$c;->b:Ljava/lang/String;

    goto :goto_0
.end method
