.class public final Lcom/termux/terminal/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# static fields
.field public static final KEYMOD_ALT:I = -0x80000000

.field public static final KEYMOD_CTRL:I = 0x40000000

.field public static final KEYMOD_SHIFT:I = 0x20000000

.field private static final TERMCAP_TO_KEYCODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    .line 68
    const-string v1, "%i"

    const v2, 0x20000016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "#2"

    const v2, 0x2000007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "#4"

    const v2, 0x20000015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "*7"

    const v2, 0x2000007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "k1"

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "k2"

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "k3"

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "k4"

    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "k5"

    const/16 v2, 0x87

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "k6"

    const/16 v2, 0x88

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "k7"

    const/16 v2, 0x89

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "k8"

    const/16 v2, 0x8a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "k9"

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "k;"

    const/16 v2, 0x8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "F1"

    const/16 v2, 0x8d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "F2"

    const/16 v2, 0x8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "F3"

    const v2, 0x20000083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "F4"

    const v2, 0x20000084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "F5"

    const v2, 0x20000085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "F6"

    const v2, 0x20000086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "F7"

    const v2, 0x20000087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "F8"

    const v2, 0x20000088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "F9"

    const v2, 0x20000089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "FA"

    const v2, 0x2000008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "FB"

    const v2, 0x2000008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "FC"

    const v2, 0x2000008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "FD"

    const v2, 0x2000008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "FE"

    const v2, 0x2000008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "kb"

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "kd"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "kl"

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "kr"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "K1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "K3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "K4"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "K5"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "ku"

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "kB"

    const v5, 0x2000003d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v4, "kD"

    const/16 v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const v4, 0x20000014

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kDN"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v5, "kF"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v4, "kI"

    const/16 v5, 0x7c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v4, "kN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "kP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const v1, 0x20000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "kR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "kUP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "@7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "@8"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(IIZZ)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x43

    const/16 v5, 0x42

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    const/16 v3, 0x7e

    .line 152
    const-string v2, "\u001b"

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_29

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_27

    const-string v0, "\r"

    if-eq p0, v5, :cond_26

    if-eq p0, v6, :cond_24

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_22

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x70

    if-eq p0, v0, :cond_21

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v0, "\u001bOP"

    packed-switch p0, :pswitch_data_2

    move-object v0, v1

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    const-string v0, "\r"

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 161
    const-string v0, "\u001bOC"

    goto :goto_0

    :cond_1
    const-string v0, "\u001b[C"

    goto :goto_0

    :cond_2
    const-string v0, "\u001b[1"

    invoke-static {v0, p1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 163
    const-string v0, "\u001bOD"

    goto :goto_0

    :cond_3
    const-string v0, "\u001b[D"

    goto :goto_0

    :cond_4
    const-string v0, "\u001b[1"

    const/16 v1, 0x44

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    .line 159
    const-string v0, "\u001bOB"

    goto :goto_0

    :cond_5
    const-string v0, "\u001b[B"

    goto :goto_0

    :cond_6
    const-string v0, "\u001b[1"

    invoke-static {v0, p1, v5}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-nez p1, :cond_8

    if-eqz p2, :cond_7

    .line 157
    const-string v0, "\u001bOA"

    goto :goto_0

    :cond_7
    const-string v0, "\u001b[A"

    goto :goto_0

    :cond_8
    const-string v0, "\u001b[1"

    const/16 v1, 0x41

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_5
    const-string v0, "\u001b[2"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    if-nez p1, :cond_a

    if-eqz p2, :cond_9

    .line 170
    const-string v0, "\u001bOF"

    goto :goto_0

    :cond_9
    const-string v0, "\u001b[F"

    goto :goto_0

    :cond_a
    const-string v0, "\u001b[1"

    const/16 v1, 0x46

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    .line 168
    const-string v0, "\u001bOH"

    goto :goto_0

    :cond_b
    const-string v0, "\u001b[H"

    goto :goto_0

    :cond_c
    const-string v0, "\u001b[1"

    const/16 v1, 0x48

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_8
    const-string v0, "\u001b[34~"

    goto :goto_0

    .line 208
    :pswitch_9
    const-string v0, "\u001b[32~"

    goto :goto_0

    .line 152
    :pswitch_a
    if-eqz p3, :cond_d

    .line 278
    const-string v0, "\u001bO"

    const/16 v1, 0x58

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "="

    goto/16 :goto_0

    :pswitch_b
    if-eqz p3, :cond_e

    .line 244
    const-string v0, "\u001bO"

    const/16 v1, 0x4d

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "\n"

    goto/16 :goto_0

    .line 250
    :pswitch_c
    const-string v0, ","

    goto/16 :goto_0

    :pswitch_d
    if-eqz p3, :cond_f

    .line 252
    const-string v0, "\u001bOn"

    goto/16 :goto_0

    :cond_f
    const-string v0, "."

    goto/16 :goto_0

    :pswitch_e
    if-eqz p3, :cond_10

    .line 248
    const-string v0, "\u001bO"

    const/16 v1, 0x6b

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "+"

    goto/16 :goto_0

    :pswitch_f
    if-eqz p3, :cond_11

    .line 254
    const-string v0, "\u001bO"

    const/16 v1, 0x6d

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v0, "-"

    goto/16 :goto_0

    :pswitch_10
    if-eqz p3, :cond_12

    .line 246
    const-string v0, "\u001bO"

    const/16 v1, 0x6a

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v0, "*"

    goto/16 :goto_0

    :pswitch_11
    if-eqz p3, :cond_13

    .line 256
    const-string v0, "\u001bO"

    const/16 v1, 0x6f

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v0, "/"

    goto/16 :goto_0

    :pswitch_12
    if-eqz p3, :cond_14

    .line 276
    const-string v0, "\u001bO"

    const/16 v1, 0x79

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v0, "9"

    goto/16 :goto_0

    :pswitch_13
    if-eqz p3, :cond_15

    .line 274
    const-string v0, "\u001bO"

    const/16 v1, 0x78

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v0, "8"

    goto/16 :goto_0

    :pswitch_14
    if-eqz p3, :cond_16

    .line 272
    const-string v0, "\u001bO"

    const/16 v1, 0x77

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v0, "7"

    goto/16 :goto_0

    :pswitch_15
    if-eqz p3, :cond_17

    .line 270
    const-string v0, "\u001bO"

    const/16 v1, 0x76

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    const-string v0, "6"

    goto/16 :goto_0

    :pswitch_16
    if-eqz p3, :cond_18

    .line 268
    const-string v0, "\u001bO"

    const/16 v1, 0x75

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v0, "5"

    goto/16 :goto_0

    :pswitch_17
    if-eqz p3, :cond_19

    .line 266
    const-string v0, "\u001bO"

    const/16 v1, 0x74

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v0, "4"

    goto/16 :goto_0

    :pswitch_18
    if-eqz p3, :cond_1a

    .line 264
    const-string v0, "\u001bO"

    const/16 v1, 0x73

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    const-string v0, "3"

    goto/16 :goto_0

    :pswitch_19
    if-eqz p3, :cond_1b

    .line 262
    const-string v0, "\u001bO"

    const/16 v1, 0x72

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v0, "2"

    goto/16 :goto_0

    :pswitch_1a
    if-eqz p3, :cond_1c

    .line 260
    const-string v0, "\u001bO"

    const/16 v1, 0x71

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    const-string v0, "1"

    goto/16 :goto_0

    :pswitch_1b
    if-eqz p3, :cond_1d

    .line 258
    const-string v0, "\u001bO"

    const/16 v1, 0x70

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1d
    const-string v0, "0"

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "\u001bOP"

    goto/16 :goto_0

    .line 205
    :pswitch_1d
    const-string v0, "\u001b[24"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 203
    :pswitch_1e
    const-string v0, "\u001b[23"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :pswitch_1f
    const-string v0, "\u001b[21"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :pswitch_20
    const-string v0, "\u001b[20"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :pswitch_21
    const-string v0, "\u001b[19"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :pswitch_22
    const-string v0, "\u001b[18"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :pswitch_23
    const-string v0, "\u001b[17"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 191
    :pswitch_24
    const-string v0, "\u001b[15"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_25
    if-nez p1, :cond_1e

    .line 189
    const-string v0, "\u001bOS"

    goto/16 :goto_0

    :cond_1e
    const-string v0, "\u001b[1"

    const/16 v1, 0x53

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_26
    if-nez p1, :cond_1f

    .line 187
    const-string v0, "\u001bOR"

    goto/16 :goto_0

    :cond_1f
    const-string v0, "\u001b[1"

    const/16 v1, 0x52

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_27
    if-nez p1, :cond_20

    .line 185
    const-string v0, "\u001bOQ"

    goto/16 :goto_0

    :cond_20
    const-string v0, "\u001b[1"

    const/16 v1, 0x51

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_28
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "\u001b[1"

    const/16 v1, 0x50

    invoke-static {v0, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :cond_21
    const-string v0, "\u001b[3"

    invoke-static {v0, p1, v3}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 225
    :cond_22
    const-string v0, "\u001b[6~"

    goto/16 :goto_0

    .line 223
    :cond_23
    const-string v0, "\u001b[5~"

    goto/16 :goto_0

    :cond_24
    and-int v0, p1, v4

    if-nez v0, :cond_2c

    .line 227
    const-string v0, ""

    move-object v1, v0

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-nez v0, :cond_25

    .line 229
    const-string v0, "\u007f"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_25
    const-string v0, "\u0008"

    goto :goto_2

    :cond_26
    and-int v1, p1, v4

    if-eqz v1, :cond_0

    .line 241
    const-string v0, "\u001b\r"

    goto/16 :goto_0

    :cond_27
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-nez v0, :cond_28

    move-object v0, v1

    goto/16 :goto_0

    .line 236
    :cond_28
    const-string v0, "\u0000"

    goto/16 :goto_0

    :cond_29
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_2a

    .line 239
    const-string v0, "\t"

    goto/16 :goto_0

    :cond_2a
    const-string v0, "\u001b[Z"

    goto/16 :goto_0

    :cond_2b
    const-string v0, "\u001b"

    goto/16 :goto_0

    :cond_2c
    move-object v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x83
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method static getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x20000000

    const/high16 v3, -0x80000000

    .line 132
    sget-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v0, v1, v2

    if-eqz v0, :cond_3

    const v0, -0x20000001

    and-int/2addr v1, v0

    move v0, v2

    :goto_1
    and-int v2, v1, v4

    if-eqz v2, :cond_1

    or-int/2addr v0, v4

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    :cond_1
    and-int v2, v1, v3

    if-eqz v2, :cond_2

    or-int/2addr v0, v3

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 148
    :cond_2
    invoke-static {v1, v0, p1, p2}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/high16 v0, -0x60000000

    if-eq p1, v0, :cond_5

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_4

    const/high16 v0, -0x20000000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p1, v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x6

    .line 311
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    goto :goto_1
.end method
