.class public Lorg/apache/tools/ant/taskdefs/condition/Os;
.super Ljava/lang/Object;
.source "Os.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final DARWIN:Ljava/lang/String; = "darwin"

.field public static final FAMILY_9X:Ljava/lang/String; = "win9x"

.field public static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field public static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field public static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field public static final FAMILY_NT:Ljava/lang/String; = "winnt"

.field public static final FAMILY_OS2:Ljava/lang/String; = "os/2"

.field public static final FAMILY_OS400:Ljava/lang/String; = "os/400"

.field public static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field public static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field public static final FAMILY_VMS:Ljava/lang/String; = "openvms"

.field public static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field public static final FAMILY_ZOS:Ljava/lang/String; = "z/os"

.field private static final OS_ARCH:Ljava/lang/String;

.field private static final OS_NAME:Ljava/lang/String;

.field private static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;


# instance fields
.field private arch:Ljava/lang/String;

.field private family:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_ARCH:Ljava/lang/String;

    .line 36
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_VERSION:Ljava/lang/String;

    .line 38
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->setFamily(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static isArch(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 220
    invoke-static {v0, v0, p0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamily(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0, v0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isName(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 208
    invoke-static {v0, p0, v0, v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    .line 250
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_5

    .line 254
    :cond_0
    if-eqz p0, :cond_13

    .line 262
    sget-object v6, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    const-string v0, "windows"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 265
    if-eqz v4, :cond_12

    .line 267
    const-string v0, "95"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const-string v0, "98"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const-string v0, "me"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const-string v0, "ce"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v3, v1

    .line 273
    :goto_0
    if-nez v3, :cond_4

    move v0, v1

    .line 275
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to detect os family \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v3, v2

    .line 272
    goto :goto_0

    :cond_4
    move v0, v2

    .line 273
    goto :goto_1

    .line 275
    :sswitch_0
    const-string v5, "netware"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1
    const-string v5, "windows"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :sswitch_2
    const-string v5, "winnt"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "win9x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :sswitch_4
    const-string v5, "z/os"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_5
    const-string v5, "unix"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "os/2"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_7
    const-string v5, "mac"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_8
    const-string v5, "dos"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_9
    const-string v5, "tandem"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto/16 :goto_2

    :sswitch_a
    const-string v5, "os/400"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string v5, "openvms"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    goto/16 :goto_2

    .line 315
    :pswitch_0
    const-string v0, "openvms"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 258
    :goto_3
    if-eqz p1, :cond_f

    .line 324
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v4, v0

    .line 326
    :goto_4
    if-eqz p2, :cond_10

    .line 327
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 329
    :goto_5
    if-eqz p3, :cond_11

    .line 330
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 332
    :goto_6
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v2, v1

    .line 334
    :cond_5
    return v2

    .line 312
    :pswitch_1
    const-string v0, "os/400"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 313
    goto :goto_3

    .line 308
    :pswitch_2
    const-string v0, "z/os"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 309
    const-string v0, "os/390"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    :goto_7
    move v5, v0

    .line 310
    goto :goto_3

    :cond_7
    move v0, v2

    .line 309
    goto :goto_7

    .line 302
    :pswitch_3
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 303
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 304
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 305
    const-string v0, "darwin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v1

    :goto_8
    move v5, v0

    .line 306
    goto :goto_3

    :cond_9
    move v0, v2

    .line 305
    goto :goto_8

    .line 299
    :pswitch_4
    const-string v0, "nonstop_kernel"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 300
    goto :goto_3

    .line 295
    :pswitch_5
    const-string v0, "mac"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 296
    const-string v0, "darwin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v1

    :goto_9
    move v5, v0

    .line 297
    goto/16 :goto_3

    :cond_b
    move v0, v2

    .line 296
    goto :goto_9

    .line 292
    :pswitch_6
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_a
    move v5, v0

    .line 293
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 292
    goto :goto_a

    .line 289
    :pswitch_7
    const-string v0, "netware"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 290
    goto/16 :goto_3

    .line 286
    :pswitch_8
    const-string v0, "os/2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 287
    goto/16 :goto_3

    .line 283
    :pswitch_9
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    move v0, v1

    :goto_b
    move v5, v0

    .line 284
    goto/16 :goto_3

    :cond_d
    move v0, v2

    .line 283
    goto :goto_b

    .line 280
    :pswitch_a
    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    move v0, v1

    :goto_c
    move v5, v0

    .line 281
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 280
    goto :goto_c

    :pswitch_b
    move v5, v4

    .line 277
    goto/16 :goto_3

    :cond_f
    move v4, v1

    .line 323
    goto/16 :goto_4

    :cond_10
    move v3, v1

    .line 326
    goto/16 :goto_5

    :cond_11
    move v0, v1

    .line 329
    goto/16 :goto_6

    :cond_12
    move v0, v2

    move v3, v2

    goto/16 :goto_1

    :cond_13
    move v5, v1

    goto/16 :goto_3

    .line 275
    :sswitch_data_0
    .sparse-switch
        -0x4b4a79ee -> :sswitch_b
        -0x3c2b5d77 -> :sswitch_a
        -0x34836b35 -> :sswitch_9
        0x18548 -> :sswitch_8
        0x1a54f -> :sswitch_7
        0x342ac7 -> :sswitch_6
        0x36d988 -> :sswitch_5
        0x383399 -> :sswitch_4
        0x6be4c3b -> :sswitch_3
        0x6be52a2 -> :sswitch_2
        0x506fa283 -> :sswitch_1
        0x6de1259a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 232
    invoke-static {v0, v0, v0, p0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public eval()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->family:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->arch:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->version:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setArch(Ljava/lang/String;)V
    .registers 3

    .line 164
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->arch:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .registers 3

    .line 146
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->family:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 155
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->name:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3

    .line 173
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Os;->version:Ljava/lang/String;

    .line 174
    return-void
.end method
