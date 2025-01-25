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
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-eqz p3, :cond_10e

    .line 254
    :cond_a
    if-eqz p0, :cond_1c7

    .line 262
    sget-object v6, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    const-string v0, "windows"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 265
    if-eqz v4, :cond_1c3

    .line 267
    const-string v0, "95"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 268
    const-string v0, "98"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 269
    const-string v0, "me"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 272
    const-string v0, "ce"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_36
    move v3, v1

    .line 273
    :goto_37
    if-nez v3, :cond_63

    move v0, v1

    .line 275
    :goto_3a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1ca

    :cond_41
    const/4 v5, -0x1

    :goto_42
    packed-switch v5, :pswitch_data_1fc

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

    :cond_61
    move v3, v2

    .line 272
    goto :goto_37

    :cond_63
    move v0, v2

    .line 273
    goto :goto_3a

    .line 275
    :sswitch_65
    const-string v5, "netware"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x4

    goto :goto_42

    :sswitch_6f
    const-string v5, "windows"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move v5, v2

    goto :goto_42

    :sswitch_79
    const-string v5, "winnt"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x2

    goto :goto_42

    :sswitch_83
    const-string v5, "win9x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move v5, v1

    goto :goto_42

    :sswitch_8d
    const-string v5, "z/os"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x9

    goto :goto_42

    :sswitch_98
    const-string v5, "unix"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x8

    goto :goto_42

    :sswitch_a3
    const-string v5, "os/2"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x3

    goto :goto_42

    :sswitch_ad
    const-string v5, "mac"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x6

    goto :goto_42

    :sswitch_b7
    const-string v5, "dos"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x5

    goto :goto_42

    :sswitch_c1
    const-string v5, "tandem"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x7

    goto/16 :goto_42

    :sswitch_cc
    const-string v5, "os/400"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0xa

    goto/16 :goto_42

    :sswitch_d8
    const-string v5, "openvms"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0xb

    goto/16 :goto_42

    .line 315
    :pswitch_e4  #0xb
    const-string v0, "openvms"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 258
    :goto_eb
    if-eqz p1, :cond_1ba

    .line 324
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v4, v0

    .line 326
    :goto_f4
    if-eqz p2, :cond_1bd

    .line 327
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_ARCH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 329
    :goto_fd
    if-eqz p3, :cond_1c0

    .line 330
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 332
    :goto_105
    if-eqz v5, :cond_10e

    if-eqz v4, :cond_10e

    if-eqz v3, :cond_10e

    if-eqz v0, :cond_10e

    move v2, v1

    .line 334
    :cond_10e
    return v2

    .line 312
    :pswitch_10f  #0xa
    const-string v0, "os/400"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 313
    goto :goto_eb

    .line 308
    :pswitch_117  #0x9
    const-string v0, "z/os"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 309
    const-string v0, "os/390"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    :cond_127
    move v0, v1

    :goto_128
    move v5, v0

    .line 310
    goto :goto_eb

    :cond_12a
    move v0, v2

    .line 309
    goto :goto_128

    .line 302
    :pswitch_12c  #0x8
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 303
    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_159

    .line 304
    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_156

    .line 305
    const-string v0, "darwin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_159

    :cond_156
    move v0, v1

    :goto_157
    move v5, v0

    .line 306
    goto :goto_eb

    :cond_159
    move v0, v2

    .line 305
    goto :goto_157

    .line 299
    :pswitch_15b  #0x7
    const-string v0, "nonstop_kernel"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 300
    goto :goto_eb

    .line 295
    :pswitch_163  #0x6
    const-string v0, "mac"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_173

    .line 296
    const-string v0, "darwin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_177

    :cond_173
    move v0, v1

    :goto_174
    move v5, v0

    .line 297
    goto/16 :goto_eb

    :cond_177
    move v0, v2

    .line 296
    goto :goto_174

    .line 292
    :pswitch_179  #0x5
    sget-object v0, Lorg/apache/tools/ant/taskdefs/condition/Os;->PATH_SEP:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18f

    move v0, v1

    :goto_18c
    move v5, v0

    .line 293
    goto/16 :goto_eb

    :cond_18f
    move v0, v2

    .line 292
    goto :goto_18c

    .line 289
    :pswitch_191  #0x4
    const-string v0, "netware"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 290
    goto/16 :goto_eb

    .line 286
    :pswitch_19a  #0x3
    const-string v0, "os/2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v5, v0

    .line 287
    goto/16 :goto_eb

    .line 283
    :pswitch_1a3  #0x2
    if-eqz v4, :cond_1ab

    if-eqz v0, :cond_1ab

    move v0, v1

    :goto_1a8
    move v5, v0

    .line 284
    goto/16 :goto_eb

    :cond_1ab
    move v0, v2

    .line 283
    goto :goto_1a8

    .line 280
    :pswitch_1ad  #0x1
    if-eqz v4, :cond_1b5

    if-eqz v3, :cond_1b5

    move v0, v1

    :goto_1b2
    move v5, v0

    .line 281
    goto/16 :goto_eb

    :cond_1b5
    move v0, v2

    .line 280
    goto :goto_1b2

    :pswitch_1b7  #0x0
    move v5, v4

    .line 277
    goto/16 :goto_eb

    :cond_1ba
    move v4, v1

    .line 323
    goto/16 :goto_f4

    :cond_1bd
    move v3, v1

    .line 326
    goto/16 :goto_fd

    :cond_1c0
    move v0, v1

    .line 329
    goto/16 :goto_105

    :cond_1c3
    move v3, v2

    move v0, v2

    goto/16 :goto_3a

    :cond_1c7
    move v5, v1

    goto/16 :goto_eb

    .line 275
    :sswitch_data_1ca
    .sparse-switch
        -0x4b4a79ee -> :sswitch_d8
        -0x3c2b5d77 -> :sswitch_cc
        -0x34836b35 -> :sswitch_c1
        0x18548 -> :sswitch_b7
        0x1a54f -> :sswitch_ad
        0x342ac7 -> :sswitch_a3
        0x36d988 -> :sswitch_98
        0x383399 -> :sswitch_8d
        0x6be4c3b -> :sswitch_83
        0x6be52a2 -> :sswitch_79
        0x506fa283 -> :sswitch_6f
        0x6de1259a -> :sswitch_65
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_1b7  #00000000
        :pswitch_1ad  #00000001
        :pswitch_1a3  #00000002
        :pswitch_19a  #00000003
        :pswitch_191  #00000004
        :pswitch_179  #00000005
        :pswitch_163  #00000006
        :pswitch_15b  #00000007
        :pswitch_12c  #00000008
        :pswitch_117  #00000009
        :pswitch_10f  #0000000a
        :pswitch_e4  #0000000b
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
