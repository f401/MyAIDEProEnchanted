.class public Lsun/misc/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final java_runtime_name:Ljava/lang/String; = "@@java_runtime_name@@"

.field private static final java_runtime_version:Ljava/lang/String; = "@@java_runtime_version@@"

.field private static final java_version:Ljava/lang/String; = "@@java_version@@"

.field private static jdk_build_number:I = 0x0

.field private static jdk_major_version:I = 0x0

.field private static jdk_micro_version:I = 0x0

.field private static jdk_minor_version:I = 0x0

.field private static jdk_special_version:Ljava/lang/String; = null

.field private static jdk_update_version:I = 0x0

.field private static jvmVersionInfoAvailable:Z = false

.field private static jvm_build_number:I = 0x0

.field private static jvm_major_version:I = 0x0

.field private static jvm_micro_version:I = 0x0

.field private static jvm_minor_version:I = 0x0

.field private static jvm_special_version:Ljava/lang/String; = null

.field private static jvm_update_version:I = 0x0

.field private static final launcher_name:Ljava/lang/String; = "@@launcher_name@@"

.field private static versionsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lsun/misc/Version;->init()V

    .line 54
    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    .line 55
    sput v0, Lsun/misc/Version;->jvm_major_version:I

    .line 56
    sput v0, Lsun/misc/Version;->jvm_minor_version:I

    .line 57
    sput v0, Lsun/misc/Version;->jvm_micro_version:I

    .line 58
    sput v0, Lsun/misc/Version;->jvm_update_version:I

    .line 59
    sput v0, Lsun/misc/Version;->jvm_build_number:I

    .line 60
    sput-object v1, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 61
    sput v0, Lsun/misc/Version;->jdk_major_version:I

    .line 62
    sput v0, Lsun/misc/Version;->jdk_minor_version:I

    .line 63
    sput v0, Lsun/misc/Version;->jdk_micro_version:I

    .line 64
    sput v0, Lsun/misc/Version;->jdk_update_version:I

    .line 65
    sput v0, Lsun/misc/Version;->jdk_build_number:I

    .line 66
    sput-object v1, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getJdkSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJdkVersionInfo()V
.end method

.method public static native getJvmSpecialVersion()Ljava/lang/String;
.end method

.method private static native getJvmVersionInfo()Z
.end method

.method public static init()V
    .registers 2

    .line 49
    const-string v0, "java.version"

    const-string v1, "@@java_version@@"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    const-string v0, "java.runtime.version"

    const-string v1, "@@java_runtime_version@@"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    const-string v0, "java.runtime.name"

    const-string v1, "@@java_runtime_name@@"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-void
.end method

.method private static initVersions()V
    .registers 7

    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x3

    const-class v1, Lsun/misc/Version;

    monitor-enter v1

    .line 244
    :try_start_6
    sget-boolean v1, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_14a

    if-eqz v1, :cond_e

    .line 245
    const-class v0, Lsun/misc/Version;

    monitor-exit v0

    .line 302
    :goto_d
    return-void

    .line 247
    :cond_e
    :try_start_e
    invoke-static {}, Lsun/misc/Version;->getJvmVersionInfo()Z

    move-result v1

    sput-boolean v1, Lsun/misc/Version;->jvmVersionInfoAvailable:Z

    .line 248
    if-nez v1, :cond_136

    .line 253
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_136

    .line 255
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_136

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_136

    .line 256
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_136

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_136

    .line 257
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_136

    .line 258
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    sput v4, Lsun/misc/Version;->jvm_major_version:I

    .line 259
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    sput v4, Lsun/misc/Version;->jvm_minor_version:I

    .line 260
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    sput v4, Lsun/misc/Version;->jvm_micro_version:I

    .line 261
    const/4 v4, 0x5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 262
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_e0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v4, v3, :cond_e0

    .line 263
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 264
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_a8
    .catchall {:try_start_e .. :try_end_a8} :catchall_14a

    move-result v4

    if-eqz v4, :cond_e0

    .line 267
    const/4 v4, 0x1

    const/4 v5, 0x3

    :try_start_ad
    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lsun/misc/Version;->jvm_update_version:I

    .line 269
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v4, v2, :cond_14f

    .line 270
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 271
    const/16 v5, 0x61

    if-lt v4, v5, :cond_14f

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_14f

    .line 272
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_d8} :catch_141
    .catchall {:try_start_ad .. :try_end_d8} :catchall_14a

    .line 279
    :goto_d8
    :try_start_d8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 282
    :cond_e0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_136

    .line 286
    const/4 v2, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 288
    array-length v2, v1
    :try_end_fd
    .catchall {:try_start_d8 .. :try_end_fd} :catchall_14a

    :goto_fd
    if-ge v0, v2, :cond_136

    aget-object v4, v1, v0

    .line 289
    const/4 v5, 0x0

    :try_start_102
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x62

    if-ne v5, v6, :cond_147

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_147

    .line 290
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 291
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 292
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/misc/Version;->jvm_build_number:I

    .line 300
    :cond_136
    invoke-static {}, Lsun/misc/Version;->getJdkVersionInfo()V

    .line 301
    const/4 v0, 0x1

    sput-boolean v0, Lsun/misc/Version;->versionsInitialized:Z
    :try_end_13c
    .catchall {:try_start_102 .. :try_end_13c} :catchall_14a

    .line 302
    const-class v0, Lsun/misc/Version;

    monitor-exit v0

    goto/16 :goto_d

    .line 276
    :catch_141
    move-exception v0

    .line 278
    const-class v0, Lsun/misc/Version;

    monitor-exit v0

    goto/16 :goto_d

    .line 288
    :cond_147
    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    .line 243
    :catchall_14a
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0

    :cond_14f
    move v2, v3

    goto :goto_d8
.end method

.method public static jdkBuildNumber()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 235
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 236
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 238
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 234
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jdkMajorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 178
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 179
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 181
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 177
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jdkMicroVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 200
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 201
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 203
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 199
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jdkMinorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 189
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 190
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 192
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 188
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jdkSpecialVersion()Ljava/lang/String;
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 219
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 220
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 222
    :cond_a
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 223
    invoke-static {}, Lsun/misc/Version;->getJdkSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;

    .line 225
    :cond_14
    sget-object v0, Lsun/misc/Version;->jdk_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return-object v0

    .line 218
    :catchall_1a
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jdkUpdateVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 212
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 213
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 215
    :cond_a
    sget v0, Lsun/misc/Version;->jdk_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 211
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmBuildNumber()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 167
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 169
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_build_number:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 165
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmMajorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 105
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 107
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_major_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 103
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmMicroVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 132
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 134
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_micro_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 130
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmMinorVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 118
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 120
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_minor_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 116
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmSpecialVersion()Ljava/lang/String;
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 151
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 153
    :cond_a
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 154
    invoke-static {}, Lsun/misc/Version;->getJvmSpecialVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;

    .line 156
    :cond_14
    sget-object v0, Lsun/misc/Version;->jvm_special_version:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return-object v0

    .line 149
    :catchall_1a
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static jvmUpdateVersion()I
    .registers 2

    const-class v0, Lsun/misc/Version;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-boolean v0, Lsun/misc/Version;->versionsInitialized:Z

    if-nez v0, :cond_a

    .line 144
    invoke-static {}, Lsun/misc/Version;->initVersions()V

    .line 146
    :cond_a
    sget v0, Lsun/misc/Version;->jvm_update_version:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    return v0

    .line 142
    :catchall_10
    move-exception v0

    const-class v1, Lsun/misc/Version;

    monitor-exit v1

    throw v0
.end method

.method public static print()V
    .registers 1

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lsun/misc/Version;->print(Ljava/io/PrintStream;)V

    .line 75
    return-void
.end method

.method public static print(Ljava/io/PrintStream;)V
    .registers 5

    .line 82
    const-string v0, "@@launcher_name@@ version \"@@java_version@@\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    const-string v0, "@@java_runtime_name@@ (build @@java_runtime_version@@)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "java.vm.info"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (build "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-void
.end method
