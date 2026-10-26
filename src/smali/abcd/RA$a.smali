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
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/RA$a;

    const-string v1, "NOT_TRIED"

    invoke-direct {v0, v1, v6}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RA$a;->j6:Labcd/RA$a;

    new-instance v1, Labcd/RA$a;

    const-string v2, "OK"

    invoke-direct {v1, v2, v7}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/RA$a;->DW:Labcd/RA$a;

    new-instance v2, Labcd/RA$a;

    const-string v3, "CONFLICTS"

    invoke-direct {v2, v3, v8}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/RA$a;->FH:Labcd/RA$a;

    new-instance v3, Labcd/RA$a;

    const-string v4, "NONDELETED"

    invoke-direct {v3, v4, v9}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/RA$a;->Hw:Labcd/RA$a;

    new-instance v4, Labcd/RA$a;

    const-string v5, "ERROR"

    invoke-direct {v4, v5, v10}, Labcd/RA$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/RA$a;->v5:Labcd/RA$a;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/RA$a;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Labcd/RA$a;->Zo:[Labcd/RA$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/RA$a;
    .locals 1

    const-class v0, Labcd/RA$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/RA$a;

    return-object v0
.end method

.method public static values()[Labcd/RA$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/RA$a;->Zo:[Labcd/RA$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RA$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
