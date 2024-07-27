.class public final enum Lorg/apache/tools/ant/util/PermissionUtils$FileType;
.super Ljava/lang/Enum;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/util/PermissionUtils$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

.field public static final enum SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    new-instance v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v1, "REGULAR_FILE"

    invoke-direct {v0, v1, v5}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 207
    new-instance v1, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v2, "DIR"

    invoke-direct {v1, v2, v6}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 209
    new-instance v2, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v3, "SYMLINK"

    invoke-direct {v2, v3, v7}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 211
    new-instance v3, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    const-string v4, "OTHER"

    invoke-direct {v3, v4, v8}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 203
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->$VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/nio/file/Path;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->SYMLINK:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->OTHER:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    goto :goto_0
.end method

.method public static of(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .registers 2

    .line 240
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->DIR:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    .line 243
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->REGULAR_FILE:Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .registers 2

    .line 203
    const-class v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    .registers 1

    .line 203
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->$VALUES:[Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    return-object v0
.end method
