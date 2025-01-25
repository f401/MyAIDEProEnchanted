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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    .line 106
    new-instance p1, Lcom/baidu/mobstat/eh;

    invoke-direct {p1}, Lcom/baidu/mobstat/eh;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/baidu/mobstat/ee;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/ef;Ljava/util/Map;I)V

    .line 107
    invoke-virtual {p0, p4}, Lcom/baidu/mobstat/ce$b;->a(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .registers 6

    .line 201
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClose,  reason:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 206
    :cond_27
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "autotrace: connect closed, server:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remote:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 211
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/baidu/mobstat/ce$a;->a(Z)V

    :cond_73
    return-void
.end method

.method public a(Lcom/baidu/mobstat/fb;)V
    .registers 3

    .line 116
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 117
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    const-string v0, "onOpen"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 120
    :cond_13
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 121
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mobstat/ce$a;->a()V

    :cond_24
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    .line 217
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mobstat/cy;->b()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 218
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object p1

    const-string v0, "onError"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 127
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 128
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 131
    :cond_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 137
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_2f

    :catch_2d
    move-exception p1

    move-object v1, v0

    :goto_2f
    if-nez v1, :cond_32

    return-void

    .line 147
    :cond_32
    :try_start_32
    const-string p1, "type"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception p1

    .line 151
    :goto_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    return-void

    .line 155
    :cond_41
    const-string p1, "deploy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "data"

    if-eqz p1, :cond_61

    .line 157
    :try_start_4b
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 158
    iget-object v0, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {v0}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/ce$a;->a(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5e} :catch_5f

    goto :goto_60

    .line 185
    :catch_5f
    move-exception p1

    .line 158
    :goto_60
    return-void

    .line 167
    :cond_61
    :try_start_61
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 168
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_73} :catch_74

    goto :goto_76

    :catch_74
    move-exception p1

    const/4 p1, -0x1

    :goto_76
    packed-switch p1, :pswitch_data_c4

    :pswitch_79  #0xc38fe, 0xc38ff
    goto :goto_c2

    .line 175
    :pswitch_7a  #0xc3900
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string v0, "autotrace: connect confirm"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/ch;->a(I)V

    .line 178
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    if-eqz p1, :cond_c2

    .line 179
    iget-object p1, p0, Lcom/baidu/mobstat/ce$b;->a:Lcom/baidu/mobstat/ce;

    invoke-static {p1}, Lcom/baidu/mobstat/ce;->a(Lcom/baidu/mobstat/ce;)Lcom/baidu/mobstat/ce$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mobstat/ce$a;->b()V

    goto :goto_c2

    .line 189
    :pswitch_9d  #0xc38fd
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string v0, "autotrace: connect failed, connect has been established"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "already connect"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mobstat/ch;->a(ILjava/lang/String;)V

    goto :goto_c2

    .line 184
    :pswitch_b1  #0xc38fc
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p1

    const-string v0, "autotrace: connect established"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/ch;->a(I)V

    :cond_c2
    :goto_c2
    return-void

    nop

    :pswitch_data_c4
    .packed-switch 0xc38fc
        :pswitch_b1  #000c38fc
        :pswitch_9d  #000c38fd
        :pswitch_79  #000c38fe
        :pswitch_79  #000c38ff
        :pswitch_7a  #000c3900
    .end packed-switch
.end method
