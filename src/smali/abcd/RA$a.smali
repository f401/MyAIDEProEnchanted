.class public final enum Labcd/RA$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/RA$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/RA$a;

.field public static final enum FH:Labcd/RA$a;

.field public static final enum Hw:Labcd/RA$a;

.field private static final Zo:[Labcd/RA$a;

.field public static final enum j6:Labcd/RA$a;

.field public static final enum v5:Labcd/RA$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/RA$a;

    const-string v1, "NOT_TRIED"

    invoke-direct {v0, v1, v2}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->j6:Labcd/RA$a;

    new-instance v0, Labcd/RA$a;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->DW:Labcd/RA$a;

    new-instance v0, Labcd/RA$a;

    const-string v1, "CONFLICTS"

    invoke-direct {v0, v1, v4}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->FH:Labcd/RA$a;

    new-instance v0, Labcd/RA$a;

    const-string v1, "NONDELETED"

    invoke-direct {v0, v1, v5}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->Hw:Labcd/RA$a;

    new-instance v0, Labcd/RA$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->v5:Labcd/RA$a;

    const/4 v0, 0x5

    new-array v0, v0, [Labcd/RA$a;

    sget-object v1, Labcd/RA$a;->j6:Labcd/RA$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/RA$a;->DW:Labcd/RA$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/RA$a;->FH:Labcd/RA$a;

    aput-object v1, v0, v4

    sget-object v1, Labcd/RA$a;->Hw:Labcd/RA$a;

    aput-object v1, v0, v5

    sget-object v1, Labcd/RA$a;->v5:Labcd/RA$a;

    aput-object v1, v0, v6

    sput-object v0, Labcd/RA$a;->Zo:[Labcd/RA$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/RA$a;
    .registers 2

    const-class v0, Labcd/RA$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/RA$a;

    return-object v0
.end method

.method public static values()[Labcd/RA$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/RA$a;->Zo:[Labcd/RA$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RA$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
