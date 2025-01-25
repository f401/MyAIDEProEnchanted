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
        "Ljava/lang/Enum<",
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
    .registers 11

    new-instance v0, Labcd/RA$a;

    const-string v1, "NOT_TRIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->j6:Labcd/RA$a;

    new-instance v1, Labcd/RA$a;

    const-string v3, "OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/RA$a;->DW:Labcd/RA$a;

    new-instance v3, Labcd/RA$a;

    const-string v5, "CONFLICTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/RA$a;->FH:Labcd/RA$a;

    new-instance v5, Labcd/RA$a;

    const-string v7, "NONDELETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/RA$a;->Hw:Labcd/RA$a;

    new-instance v7, Labcd/RA$a;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/RA$a;->v5:Labcd/RA$a;

    const/4 v9, 0x5

    new-array v9, v9, [Labcd/RA$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Labcd/RA$a;->Zo:[Labcd/RA$a;

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

    move-result-object p0

    check-cast p0, Labcd/RA$a;

    return-object p0
.end method

.method public static values()[Labcd/RA$a;
    .registers 4

    sget-object v0, Labcd/RA$a;->Zo:[Labcd/RA$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RA$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
