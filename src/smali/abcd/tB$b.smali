.class public final enum Labcd/tB$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/tB$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/tB$b;

.field public static final enum FH:Labcd/tB$b;

.field public static final enum Hw:Labcd/tB$b;

.field public static final enum j6:Labcd/tB$b;

.field private static final v5:[Labcd/tB$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/tB$b;

    const-string v1, "BEGIN"

    invoke-direct {v0, v1, v2}, Labcd/tB$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/tB$b;->j6:Labcd/tB$b;

    new-instance v0, Labcd/tB$b;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Labcd/tB$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/tB$b;->DW:Labcd/tB$b;

    new-instance v0, Labcd/tB$b;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Labcd/tB$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/tB$b;->FH:Labcd/tB$b;

    new-instance v0, Labcd/tB$b;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v5}, Labcd/tB$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/tB$b;->Hw:Labcd/tB$b;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/tB$b;

    sget-object v1, Labcd/tB$b;->j6:Labcd/tB$b;

    aput-object v1, v0, v2

    sget-object v1, Labcd/tB$b;->DW:Labcd/tB$b;

    aput-object v1, v0, v3

    sget-object v1, Labcd/tB$b;->FH:Labcd/tB$b;

    aput-object v1, v0, v4

    sget-object v1, Labcd/tB$b;->Hw:Labcd/tB$b;

    aput-object v1, v0, v5

    sput-object v0, Labcd/tB$b;->v5:[Labcd/tB$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/tB$b;
    .registers 2

    const-class v0, Labcd/tB$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/tB$b;

    return-object v0
.end method

.method public static values()[Labcd/tB$b;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/tB$b;->v5:[Labcd/tB$b;

    array-length v1, v0

    new-array v2, v1, [Labcd/tB$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
