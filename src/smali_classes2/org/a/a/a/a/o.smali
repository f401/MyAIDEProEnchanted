.class public final enum Lorg/a/a/a/a/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/a/a/a/a/o;

.field public static final enum b:Lorg/a/a/a/a/o;

.field private static final c:[Lorg/a/a/a/a/o;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/a/a/a/a/o;

    const-string v1, "LEXER"

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/a/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/o;->a:Lorg/a/a/a/a/o;

    new-instance v0, Lorg/a/a/a/a/o;

    const-string v1, "PARSER"

    invoke-direct {v0, v1, v3}, Lorg/a/a/a/a/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/a/o;->b:Lorg/a/a/a/a/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/a/a/a/a/o;

    sget-object v1, Lorg/a/a/a/a/o;->a:Lorg/a/a/a/a/o;

    aput-object v1, v0, v2

    sget-object v1, Lorg/a/a/a/a/o;->b:Lorg/a/a/a/a/o;

    aput-object v1, v0, v3

    sput-object v0, Lorg/a/a/a/a/o;->c:[Lorg/a/a/a/a/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/a/a/a/a/o;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lorg/a/a/a/a/o;->c:[Lorg/a/a/a/a/o;

    array-length v1, v0

    new-array v2, v1, [Lorg/a/a/a/a/o;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
