.class public final enum Labcd/_J$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/_J$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/_J$c;

.field public static final enum FH:Labcd/_J$c;

.field public static final enum Hw:Labcd/_J$c;

.field public static final enum j6:Labcd/_J$c;

.field private static final v5:[Labcd/_J$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/_J$c;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v2}, Labcd/_J$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/_J$c;->j6:Labcd/_J$c;

    new-instance v0, Labcd/_J$c;

    const-string v1, "DIFFER_BY_METADATA"

    invoke-direct {v0, v1, v3}, Labcd/_J$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/_J$c;->DW:Labcd/_J$c;

    new-instance v0, Labcd/_J$c;

    const-string v1, "SMUDGED"

    invoke-direct {v0, v1, v4}, Labcd/_J$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/_J$c;->FH:Labcd/_J$c;

    new-instance v0, Labcd/_J$c;

    const-string v1, "DIFFER_BY_TIMESTAMP"

    invoke-direct {v0, v1, v5}, Labcd/_J$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/_J$c;->Hw:Labcd/_J$c;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/_J$c;

    sget-object v1, Labcd/_J$c;->j6:Labcd/_J$c;

    aput-object v1, v0, v2

    sget-object v1, Labcd/_J$c;->DW:Labcd/_J$c;

    aput-object v1, v0, v3

    sget-object v1, Labcd/_J$c;->FH:Labcd/_J$c;

    aput-object v1, v0, v4

    sget-object v1, Labcd/_J$c;->Hw:Labcd/_J$c;

    aput-object v1, v0, v5

    sput-object v0, Labcd/_J$c;->v5:[Labcd/_J$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/_J$c;
    .registers 2

    const-class v0, Labcd/_J$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/_J$c;

    return-object v0
.end method

.method public static values()[Labcd/_J$c;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/_J$c;->v5:[Labcd/_J$c;

    array-length v1, v0

    new-array v2, v1, [Labcd/_J$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
