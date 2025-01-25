.class public final enum Lorg/xutils/db/sqlite/ColumnDbType;
.super Ljava/lang/Enum;
.source "ColumnDbType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/db/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum REAL:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum TEXT:Lorg/xutils/db/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8
    new-instance v0, Lorg/xutils/db/sqlite/ColumnDbType;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v6, v2}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v1, Lorg/xutils/db/sqlite/ColumnDbType;

    const-string v2, "REAL"

    const-string v3, "REAL"

    invoke-direct {v1, v2, v7, v3}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/xutils/db/sqlite/ColumnDbType;->REAL:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v2, Lorg/xutils/db/sqlite/ColumnDbType;

    const-string v3, "TEXT"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v8, v4}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v3, Lorg/xutils/db/sqlite/ColumnDbType;

    const-string v4, "BLOB"

    const-string v5, "BLOB"

    invoke-direct {v3, v4, v9, v5}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/xutils/db/sqlite/ColumnDbType;->BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

    .line 6
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/xutils/db/sqlite/ColumnDbType;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Lorg/xutils/db/sqlite/ColumnDbType;->$VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lorg/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .line 6
    const-class v0, Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public static values()[Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 1

    .line 6
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->$VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v0}, [Lorg/xutils/db/sqlite/ColumnDbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lorg/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
