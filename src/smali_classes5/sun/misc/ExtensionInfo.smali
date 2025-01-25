.class public Lsun/misc/ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionInfo.java"


# static fields
.field public static final COMPATIBLE:I = 0x0

.field public static final INCOMPATIBLE:I = 0x4

.field public static final REQUIRE_IMPLEMENTATION_UPGRADE:I = 0x2

.field public static final REQUIRE_SPECIFICATION_UPGRADE:I = 0x1

.field public static final REQUIRE_VENDOR_SWITCH:I = 0x3

.field private static final rb:Ljava/util/ResourceBundle;


# instance fields
.field public implementationVersion:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public specVendor:Ljava/lang/String;

.field public specVersion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vendor:Ljava/lang/String;

.field public vendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    const-string v0, "sun.misc.resources.Messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lsun/misc/ExtensionInfo;->rb:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_12f

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    .line 110
    if-eqz v1, :cond_39

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    .line 113
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->title:Ljava/lang/String;

    .line 115
    if-eqz v1, :cond_5c

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->title:Ljava/lang/String;

    .line 118
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->specVersion:Ljava/lang/String;

    .line 120
    if-eqz v1, :cond_7f

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->specVersion:Ljava/lang/String;

    .line 123
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->specVendor:Ljava/lang/String;

    .line 125
    if-eqz v1, :cond_a2

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->specVendor:Ljava/lang/String;

    .line 128
    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->implementationVersion:Ljava/lang/String;

    .line 130
    if-eqz v1, :cond_c5

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->implementationVersion:Ljava/lang/String;

    .line 133
    :cond_c5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->vendor:Ljava/lang/String;

    .line 135
    if-eqz v1, :cond_e8

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->vendor:Ljava/lang/String;

    .line 138
    :cond_e8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p2, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    .line 140
    if-eqz v1, :cond_10b

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    .line 143
    :cond_10b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ExtensionInfo;->url:Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_12e

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ExtensionInfo;->url:Ljava/lang/String;

    .line 147
    :cond_12e
    return-void

    .line 105
    :cond_12f
    const-string v0, ""

    goto/16 :goto_16
.end method

.method private compareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-direct {p0, v0, v1}, Lsun/misc/ExtensionInfo;->strictCompareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private convertToken(Ljava/lang/String;)I
    .registers 10

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 292
    if-eqz p1, :cond_d

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 411
    :cond_d
    :goto_d
    return v1

    .line 297
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 299
    iget-object v2, p0, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    .line 303
    new-instance v3, Ljava/text/MessageFormat;

    sget-object v4, Lsun/misc/ExtensionInfo;->rb:Ljava/util/ResourceBundle;

    const-string v5, "optpkg.versionerror"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 310
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 312
    if-ne v2, v6, :cond_48

    if-ne v4, v6, :cond_48

    .line 316
    :try_start_3a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3d} :catch_41

    move-result v0

    mul-int/lit8 v1, v0, 0x64

    goto :goto_d

    .line 317
    :catch_41
    move-exception v0

    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 322
    :cond_48
    if-eq v4, v6, :cond_a1

    .line 328
    const/4 v2, 0x0

    :try_start_4b
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 331
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 332
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 334
    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    .line 335
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 340
    const/16 v4, 0x61

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    if-lt v5, v4, :cond_88

    const/16 v4, 0x7a

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    if-gt v5, v4, :cond_88

    .line 342
    mul-int/lit8 v1, v0, 0x64

    add-int/2addr v1, v5

    .line 355
    :goto_82
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v1

    add-int v1, v2, v0

    goto :goto_d

    .line 346
    :cond_88
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_8d} :catch_8e

    goto :goto_82

    .line 352
    :catch_8e
    move-exception v0

    .line 353
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 350
    :cond_96
    add-int/lit8 v4, v4, 0x1

    :try_start_98
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_9f} :catch_8e

    move-result v0

    goto :goto_82

    .line 365
    :cond_a1
    const/4 v0, 0x0

    :try_start_a2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_a9} :catch_113

    move-result v4

    .line 369
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v2, "ea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_cd

    .line 380
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    const/16 v0, 0x32

    .line 399
    :goto_be
    if-eqz v2, :cond_c8

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 402
    :cond_c8
    mul-int/lit8 v1, v4, 0x64

    sub-int/2addr v1, v0

    goto/16 :goto_d

    .line 383
    :cond_cd
    const-string v2, "alpha"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_dd

    .line 385
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    const/16 v0, 0x28

    goto :goto_be

    .line 388
    :cond_dd
    const-string v2, "beta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_ed

    .line 390
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    const/16 v0, 0x1e

    goto :goto_be

    .line 393
    :cond_ed
    const-string v2, "rc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_fc

    .line 395
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    const/16 v0, 0x14

    goto :goto_be

    .line 393
    :cond_fc
    const-string v2, ""

    move v0, v1

    goto :goto_be

    .line 408
    :cond_100
    :try_start_100
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_103
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_103} :catch_10b

    move-result v1

    mul-int/lit8 v2, v4, 0x64

    sub-int v0, v2, v0

    add-int/2addr v1, v0

    goto/16 :goto_d

    .line 409
    :catch_10b
    move-exception v0

    .line 410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 366
    :catch_113
    move-exception v0

    .line 367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method private strictCompareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 285
    :goto_8
    return v1

    .line 255
    :cond_9
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ".,"

    invoke-direct {v0, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ".,"

    invoke-direct {v3, p2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 263
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/misc/ExtensionInfo;->convertToken(Ljava/lang/String;)I

    move-result v0

    .line 266
    :goto_29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 267
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/misc/ExtensionInfo;->convertToken(Ljava/lang/String;)I

    move-result v1

    .line 269
    :cond_3b
    if-le v0, v1, :cond_3f

    .line 270
    const/4 v1, 0x1

    goto :goto_8

    .line 271
    :cond_3f
    if-le v1, v0, :cond_43

    move v1, v2

    .line 272
    goto :goto_8

    .line 276
    :cond_43
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 277
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 279
    if-ne v1, v2, :cond_57

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 282
    :cond_57
    if-ne v0, v2, :cond_5f

    .line 283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 285
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-direct {p0, v1, v0}, Lsun/misc/ExtensionInfo;->strictCompareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_70
    move v0, v1

    goto :goto_29
.end method


# virtual methods
.method public isCompatibleWith(Lsun/misc/ExtensionInfo;)I
    .registers 7

    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 160
    iget-object v3, p0, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v4, p1, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_d

    :cond_b
    move v0, v2

    .line 201
    :cond_c
    :goto_c
    return v0

    .line 162
    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_53

    .line 165
    iget-object v2, p0, Lsun/misc/ExtensionInfo;->specVersion:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v3, p1, Lsun/misc/ExtensionInfo;->specVersion:Ljava/lang/String;

    if-nez v3, :cond_1d

    :cond_1b
    move v0, v1

    .line 166
    goto :goto_c

    .line 168
    :cond_1d
    invoke-direct {p0, v2, v3}, Lsun/misc/ExtensionInfo;->compareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 169
    if-gez v2, :cond_33

    .line 171
    iget-object v1, p0, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    if-eqz v1, :cond_31

    iget-object v2, p1, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 176
    :cond_31
    const/4 v0, 0x1

    goto :goto_c

    .line 180
    :cond_33
    iget-object v2, p0, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_51

    iget-object v3, p1, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    if-eqz v3, :cond_51

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 187
    iget-object v0, p0, Lsun/misc/ExtensionInfo;->implementationVersion:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v2, p1, Lsun/misc/ExtensionInfo;->implementationVersion:Ljava/lang/String;

    if-eqz v2, :cond_51

    .line 189
    invoke-direct {p0, v0, v2}, Lsun/misc/ExtensionInfo;->compareExtensionVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 190
    if-gez v0, :cond_51

    .line 192
    const/4 v0, 0x2

    goto :goto_c

    :cond_51
    move v0, v1

    .line 198
    goto :goto_c

    :cond_53
    move v0, v2

    .line 201
    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extension : title("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), name("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), spec vendor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->specVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), spec version("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->specVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), impl vendor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), impl vendor id("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), impl version("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->implementationVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), impl url("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/misc/ExtensionInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
