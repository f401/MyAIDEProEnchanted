.class public final enum Lorg/apache/tools/zip/Zip64Mode;
.super Ljava/lang/Enum;
.source "Zip64Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/zip/Zip64Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/zip/Zip64Mode;

.field public static final enum Always:Lorg/apache/tools/zip/Zip64Mode;

.field public static final enum AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

.field public static final enum Never:Lorg/apache/tools/zip/Zip64Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lorg/apache/tools/zip/Zip64Mode;

    const-string v1, "Always"

    invoke-direct {v0, v1, v4}, Lorg/apache/tools/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/zip/Zip64Mode;->Always:Lorg/apache/tools/zip/Zip64Mode;

    .line 41
    new-instance v1, Lorg/apache/tools/zip/Zip64Mode;

    const-string v2, "Never"

    invoke-direct {v1, v2, v5}, Lorg/apache/tools/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/zip/Zip64Mode;->Never:Lorg/apache/tools/zip/Zip64Mode;

    .line 46
    new-instance v2, Lorg/apache/tools/zip/Zip64Mode;

    const-string v3, "AsNeeded"

    invoke-direct {v2, v3, v6}, Lorg/apache/tools/zip/Zip64Mode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/zip/Zip64Mode;->AsNeeded:Lorg/apache/tools/zip/Zip64Mode;

    .line 28
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/tools/zip/Zip64Mode;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lorg/apache/tools/zip/Zip64Mode;->$VALUES:[Lorg/apache/tools/zip/Zip64Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/zip/Zip64Mode;
    .registers 2

    .line 28
    const-class v0, Lorg/apache/tools/zip/Zip64Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Zip64Mode;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/zip/Zip64Mode;
    .registers 1

    .line 28
    sget-object v0, Lorg/apache/tools/zip/Zip64Mode;->$VALUES:[Lorg/apache/tools/zip/Zip64Mode;

    invoke-virtual {v0}, [Lorg/apache/tools/zip/Zip64Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/zip/Zip64Mode;

    return-object v0
.end method
