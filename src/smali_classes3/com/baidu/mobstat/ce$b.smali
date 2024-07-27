.class Lcom/baidu/mobstat/ce$b;
.super Lcom/baidu/mobstat/ee;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/ce;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ce;Ljava/net/URI;ILjava/net/Socket;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    .line 106
    new-instance v0, Lcom/baidu/mobstat/eh;

    invoke-direct {v0}, Lcom/baidu/mobstat/eh;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p3}, Lcom/baidu/mobstat/ee;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/ef;Ljava/util/Map;I)V

    .line 107
    invoke-virtual {p0, p4}, Lcom/baidu/mobstat/ce$b;->a(Ljava/net/Socket;)V

    .line 108
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .registers 8

    .line 201
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClose,  reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remote:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autotrace: connect closed, server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/baidu/mobstat/ce$a;->a(Z)V

    .line 213
    :cond_1
    return-void
.end method

.method public a(Lcom/baidu/mobstat/fb;)V
    .registers 4

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "onOpen"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/ce$a;->a()V

    .line 123
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .line 217
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 127
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :goto_1
    if-eqz v1, :cond_1

    .line 147
    :try_start_1
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 151
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    const-string v2, "deploy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    :try_start_2
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 158
    iget-object v1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/ce$a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 165
    :cond_3
    :try_start_3
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 168
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    .line 173
    :goto_3
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 184
    :pswitch_1
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: connect established"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ch;->a(I)V

    goto :goto_0

    .line 169
    :catch_2
    move-exception v0

    const/4 v0, -0x1

    goto :goto_3

    .line 175
    :pswitch_2
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: connect confirm"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ch;->a(I)V

    .line 178
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/ce$a;->b()V

    goto/16 :goto_0

    .line 189
    :pswitch_3
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    const-string v1, "autotrace: connect failed, connect has been established"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "already connect"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0xc38fc
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
