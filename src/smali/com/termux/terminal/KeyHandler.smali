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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    .line 68
    const v1, 0x20000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const v1, 0x2000007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const v1, 0x20000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const v1, 0x2000007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k;"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const v1, 0x20000083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const v1, 0x20000084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const v1, 0x20000085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const v1, 0x20000086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const v1, 0x20000087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v1, 0x20000088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const v1, 0x20000089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const v1, 0x2000008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const v1, 0x2000008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const v1, 0x2000008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const v1, 0x2000008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const v1, 0x2000008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ku"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const v4, 0x2000003d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kB"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kD"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const/16 v4, 0x7c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kI"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "@8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(IIZZ)Ljava/lang/String;
    .registers 12

    .line 152
    const/4 v0, 0x4

    const-string v1, "\u001b"

    if-eq p0, v0, :cond_218

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_20d

    const/16 v0, 0x3e

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v3, 0x0

    if-eq p0, v0, :cond_205

    const/high16 v0, -0x80000000

    const/16 v4, 0x42

    const-string v5, "\r"

    if-eq p0, v4, :cond_1fd

    const/16 v6, 0x43

    if-eq p0, v6, :cond_1e9

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1e6

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1e3

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_218

    const/16 v1, 0x70

    const/16 v2, 0x7e

    if-eq p0, v1, :cond_1dc

    const-string v7, "\u001b[1"

    packed-switch p0, :pswitch_data_21a

    packed-switch p0, :pswitch_data_228

    const-string p2, "\u001bOP"

    const-string v4, "\u001bO"

    packed-switch p0, :pswitch_data_236

    return-object v3

    .line 208
    :pswitch_3e  #0x17
    return-object v5

    :pswitch_3f  #0x16
    if-nez p1, :cond_49

    if-eqz p2, :cond_46

    .line 161
    const-string p0, "\u001bOC"

    goto :goto_4d

    :cond_46
    const-string p0, "\u001b[C"

    goto :goto_4d

    :cond_49
    invoke-static {v7, p1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_4d
    return-object p0

    :pswitch_4e  #0x15
    if-nez p1, :cond_58

    if-eqz p2, :cond_55

    .line 163
    const-string p0, "\u001bOD"

    goto :goto_5e

    :cond_55
    const-string p0, "\u001b[D"

    goto :goto_5e

    :cond_58
    const/16 p0, 0x44

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_5e
    return-object p0

    :pswitch_5f  #0x14
    if-nez p1, :cond_69

    if-eqz p2, :cond_66

    .line 159
    const-string p0, "\u001bOB"

    goto :goto_6d

    :cond_66
    const-string p0, "\u001b[B"

    goto :goto_6d

    :cond_69
    invoke-static {v7, p1, v4}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_6d
    return-object p0

    :pswitch_6e  #0x13
    if-nez p1, :cond_78

    if-eqz p2, :cond_75

    .line 157
    const-string p0, "\u001bOA"

    goto :goto_7e

    :cond_75
    const-string p0, "\u001b[A"

    goto :goto_7e

    :cond_78
    const/16 p0, 0x41

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_7e
    return-object p0

    .line 218
    :pswitch_7f  #0x7c
    const-string p0, "\u001b[2"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_86  #0x7b
    if-nez p1, :cond_90

    if-eqz p2, :cond_8d

    .line 170
    const-string p0, "\u001bOF"

    goto :goto_96

    :cond_8d
    const-string p0, "\u001b[F"

    goto :goto_96

    :cond_90
    const/16 p0, 0x46

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_96
    return-object p0

    :pswitch_97  #0x7a
    if-nez p1, :cond_a1

    if-eqz p2, :cond_9e

    .line 168
    const-string p0, "\u001bOH"

    goto :goto_a7

    :cond_9e
    const-string p0, "\u001b[H"

    goto :goto_a7

    :cond_a1
    const/16 p0, 0x48

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_a7
    return-object p0

    .line 211
    :pswitch_a8  #0x79
    const-string p0, "\u001b[34~"

    return-object p0

    .line 208
    :pswitch_ab  #0x78
    const-string p0, "\u001b[32~"

    return-object p0

    .line 152
    :pswitch_ae  #0xa1
    if-eqz p3, :cond_b7

    .line 278
    const/16 p0, 0x58

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_b9

    :cond_b7
    const-string p0, "="

    :goto_b9
    return-object p0

    :pswitch_ba  #0xa0
    if-eqz p3, :cond_c3

    .line 244
    const/16 p0, 0x4d

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_c5

    :cond_c3
    const-string p0, "\n"

    :goto_c5
    return-object p0

    .line 250
    :pswitch_c6  #0x9f
    const-string p0, ","

    return-object p0

    :pswitch_c9  #0x9e
    if-eqz p3, :cond_ce

    .line 252
    const-string p0, "\u001bOn"

    goto :goto_d0

    :cond_ce
    const-string p0, "."

    :goto_d0
    return-object p0

    :pswitch_d1  #0x9d
    if-eqz p3, :cond_da

    .line 248
    const/16 p0, 0x6b

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_dc

    :cond_da
    const-string p0, "+"

    :goto_dc
    return-object p0

    :pswitch_dd  #0x9c
    if-eqz p3, :cond_e6

    .line 254
    const/16 p0, 0x6d

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_e8

    :cond_e6
    const-string p0, "-"

    :goto_e8
    return-object p0

    :pswitch_e9  #0x9b
    if-eqz p3, :cond_f2

    .line 246
    const/16 p0, 0x6a

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_f4

    :cond_f2
    const-string p0, "*"

    :goto_f4
    return-object p0

    :pswitch_f5  #0x9a
    if-eqz p3, :cond_fc

    .line 256
    invoke-static {v4, p1, v0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_fe

    :cond_fc
    const-string p0, "/"

    :goto_fe
    return-object p0

    :pswitch_ff  #0x99
    if-eqz p3, :cond_108

    .line 276
    const/16 p0, 0x79

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_10a

    :cond_108
    const-string p0, "9"

    :goto_10a
    return-object p0

    :pswitch_10b  #0x98
    if-eqz p3, :cond_114

    .line 274
    const/16 p0, 0x78

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_116

    :cond_114
    const-string p0, "8"

    :goto_116
    return-object p0

    :pswitch_117  #0x97
    if-eqz p3, :cond_120

    .line 272
    const/16 p0, 0x77

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_122

    :cond_120
    const-string p0, "7"

    :goto_122
    return-object p0

    :pswitch_123  #0x96
    if-eqz p3, :cond_12c

    .line 270
    const/16 p0, 0x76

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_12e

    :cond_12c
    const-string p0, "6"

    :goto_12e
    return-object p0

    :pswitch_12f  #0x95
    if-eqz p3, :cond_138

    .line 268
    const/16 p0, 0x75

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_13a

    :cond_138
    const-string p0, "5"

    :goto_13a
    return-object p0

    :pswitch_13b  #0x94
    if-eqz p3, :cond_144

    .line 266
    const/16 p0, 0x74

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_146

    :cond_144
    const-string p0, "4"

    :goto_146
    return-object p0

    :pswitch_147  #0x93
    if-eqz p3, :cond_150

    .line 264
    const/16 p0, 0x73

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_152

    :cond_150
    const-string p0, "3"

    :goto_152
    return-object p0

    :pswitch_153  #0x92
    if-eqz p3, :cond_15c

    .line 262
    const/16 p0, 0x72

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_15e

    :cond_15c
    const-string p0, "2"

    :goto_15e
    return-object p0

    :pswitch_15f  #0x91
    if-eqz p3, :cond_168

    .line 260
    const/16 p0, 0x71

    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_16a

    :cond_168
    const-string p0, "1"

    :goto_16a
    return-object p0

    :pswitch_16b  #0x90
    if-eqz p3, :cond_172

    .line 258
    invoke-static {v4, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_174

    :cond_172
    const-string p0, "0"

    :goto_174
    return-object p0

    :pswitch_175  #0x8f
    return-object p2

    .line 205
    :pswitch_176  #0x8e
    const-string p0, "\u001b[24"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :pswitch_17d  #0x8d
    const-string p0, "\u001b[23"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 201
    :pswitch_184  #0x8c
    const-string p0, "\u001b[21"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :pswitch_18b  #0x8b
    const-string p0, "\u001b[20"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :pswitch_192  #0x8a
    const-string p0, "\u001b[19"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_199  #0x89
    const-string p0, "\u001b[18"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_1a0  #0x88
    const-string p0, "\u001b[17"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :pswitch_1a7  #0x87
    const-string p0, "\u001b[15"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1ae  #0x86
    if-nez p1, :cond_1b3

    .line 189
    const-string p0, "\u001bOS"

    goto :goto_1b9

    :cond_1b3
    const/16 p0, 0x53

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_1b9
    return-object p0

    :pswitch_1ba  #0x85
    if-nez p1, :cond_1bf

    .line 187
    const-string p0, "\u001bOR"

    goto :goto_1c5

    :cond_1bf
    const/16 p0, 0x52

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_1c5
    return-object p0

    :pswitch_1c6  #0x84
    if-nez p1, :cond_1cb

    .line 185
    const-string p0, "\u001bOQ"

    goto :goto_1d1

    :cond_1cb
    const/16 p0, 0x51

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_1d1
    return-object p0

    :pswitch_1d2  #0x83
    if-nez p1, :cond_1d5

    goto :goto_1db

    .line 183
    :cond_1d5
    const/16 p0, 0x50

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    :goto_1db
    return-object p2

    .line 220
    :cond_1dc
    const-string p0, "\u001b[3"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1e3
    const-string p0, "\u001b[6~"

    return-object p0

    .line 223
    :cond_1e6
    const-string p0, "\u001b[5~"

    return-object p0

    :cond_1e9
    and-int p0, p1, v0

    if-nez p0, :cond_1ef

    .line 227
    const-string v1, ""

    :cond_1ef
    and-int p0, p1, v2

    if-nez p0, :cond_1f6

    .line 229
    const-string p0, "\u007f"

    goto :goto_1f8

    :cond_1f6
    const-string p0, "\b"

    :goto_1f8
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1fd
    and-int p0, p1, v0

    if-nez p0, :cond_202

    goto :goto_204

    .line 241
    :cond_202
    const-string v5, "\u001b\r"

    :goto_204
    return-object v5

    :cond_205
    and-int p0, p1, v2

    if-nez p0, :cond_20a

    goto :goto_20c

    .line 236
    :cond_20a
    const-string v3, "\u0000"

    :goto_20c
    return-object v3

    :cond_20d
    const/high16 p0, 0x20000000

    and-int/2addr p0, p1

    if-nez p0, :cond_215

    .line 239
    const-string p0, "\t"

    goto :goto_217

    :cond_215
    const-string p0, "\u001b[Z"

    :goto_217
    return-object p0

    :cond_218
    return-object v1

    nop

    :pswitch_data_21a
    .packed-switch 0x13
        :pswitch_6e  #00000013
        :pswitch_5f  #00000014
        :pswitch_4e  #00000015
        :pswitch_3f  #00000016
        :pswitch_3e  #00000017
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x78
        :pswitch_ab  #00000078
        :pswitch_a8  #00000079
        :pswitch_97  #0000007a
        :pswitch_86  #0000007b
        :pswitch_7f  #0000007c
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x83
        :pswitch_1d2  #00000083
        :pswitch_1c6  #00000084
        :pswitch_1ba  #00000085
        :pswitch_1ae  #00000086
        :pswitch_1a7  #00000087
        :pswitch_1a0  #00000088
        :pswitch_199  #00000089
        :pswitch_192  #0000008a
        :pswitch_18b  #0000008b
        :pswitch_184  #0000008c
        :pswitch_17d  #0000008d
        :pswitch_176  #0000008e
        :pswitch_175  #0000008f
        :pswitch_16b  #00000090
        :pswitch_15f  #00000091
        :pswitch_153  #00000092
        :pswitch_147  #00000093
        :pswitch_13b  #00000094
        :pswitch_12f  #00000095
        :pswitch_123  #00000096
        :pswitch_117  #00000097
        :pswitch_10b  #00000098
        :pswitch_ff  #00000099
        :pswitch_f5  #0000009a
        :pswitch_e9  #0000009b
        :pswitch_dd  #0000009c
        :pswitch_d1  #0000009d
        :pswitch_c9  #0000009e
        :pswitch_c6  #0000009f
        :pswitch_ba  #000000a0
        :pswitch_ae  #000000a1
    .end packed-switch
.end method

.method static getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 6

    .line 132
    sget-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-eqz v1, :cond_1b

    const v1, -0x20000001

    and-int/2addr p0, v1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const/high16 v1, 0x40000000  # 2.0f

    and-int v2, p0, v1

    if-eqz v2, :cond_27

    or-int/2addr v0, v1

    const v1, -0x40000001  # -1.9999999f

    and-int/2addr p0, v1

    :cond_27
    const/high16 v1, -0x80000000

    and-int v2, p0, v1

    if-eqz v2, :cond_32

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    .line 148
    :cond_32
    invoke-static {p0, v0, p1, p2}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_39

    const/high16 v0, -0x60000000

    if-eq p1, v0, :cond_37

    const/high16 v0, -0x40000000  # -2.0f

    if-eq p1, v0, :cond_35

    const/high16 v0, -0x20000000

    if-eq p1, v0, :cond_32

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_30

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p1, v0, :cond_2e

    const/high16 v0, 0x60000000

    if-eq p1, v0, :cond_2c

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 p1, 0x6

    goto :goto_3a

    :cond_2e
    const/4 p1, 0x5

    goto :goto_3a

    :cond_30
    const/4 p1, 0x2

    goto :goto_3a

    :cond_32
    const/16 p1, 0x8

    goto :goto_3a

    :cond_35
    const/4 p1, 0x7

    goto :goto_3a

    :cond_37
    const/4 p1, 0x4

    goto :goto_3a

    :cond_39
    const/4 p1, 0x3

    .line 311
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
