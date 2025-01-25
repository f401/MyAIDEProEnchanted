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
    .registers 5

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    .line 189
    invoke-static {p1}, Lcom/baidu/mobstat/de;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/dd$c;->a:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcom/baidu/mobstat/de;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/mobstat/dd$c;->b:Ljava/lang/String;

    .line 193
    invoke-static {p1}, Lcom/baidu/mobstat/de;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 195
    invoke-virtual {p0}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 197
    invoke-static {p1, p3}, Lcom/baidu/mobstat/de;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    .line 201
    :cond_2d
    iput-object p2, p0, Lcom/baidu/mobstat/dd$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_13

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/dd$c;->a(Z)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, v1, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    goto :goto_6

    .line 214
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .registers 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/baidu/mobstat/dd$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1d

    .line 249
    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object p1, p0, Lcom/baidu/mobstat/dd$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 7

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    :goto_8
    if-eqz v2, :cond_38

    if-nez v3, :cond_2b

    .line 227
    invoke-virtual {v2}, Lcom/baidu/mobstat/dd$c;->c()Ljava/lang/String;

    move-result-object v4

    .line 228
    const-string v5, "ListView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "RecyclerView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 229
    const-string v5, "GridView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_28
    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2b
    move v4, v3

    const/4 v3, 0x0

    .line 235
    :goto_2d
    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/dd$c;->a(Z)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, v2, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    move v3, v4

    goto :goto_8

    .line 240
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/baidu/mobstat/dd$c;->d:Lcom/baidu/mobstat/dd$c;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lcom/baidu/mobstat/dd$c;->b:Ljava/lang/String;

    :goto_9
    return-object v0
.end method
