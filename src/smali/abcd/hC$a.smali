.class public final enum Labcd/hC$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/hC$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/hC$a;

.field public static final enum FH:Labcd/hC$a;

.field public static final enum Hw:Labcd/hC$a;

.field private static final Zo:[Labcd/hC$a;

.field public static final enum j6:Labcd/hC$a;

.field public static final enum v5:Labcd/hC$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/hC$a;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v6}, Labcd/hC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/hC$a;->j6:Labcd/hC$a;

    new-instance v1, Labcd/hC$a;

    const-string v2, "MODIFY"

    invoke-direct {v1, v2, v7}, Labcd/hC$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    new-instance v2, Labcd/hC$a;

    const-string v3, "DELETE"

    invoke-direct {v2, v3, v8}, Labcd/hC$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/hC$a;->FH:Labcd/hC$a;

    new-instance v3, Labcd/hC$a;

    const-string v4, "RENAME"

    invoke-direct {v3, v4, v9}, Labcd/hC$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/hC$a;->Hw:Labcd/hC$a;

    new-instance v4, Labcd/hC$a;

    const-string v5, "COPY"

    invoke-direct {v4, v5, v10}, Labcd/hC$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/hC$a;->v5:Labcd/hC$a;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/hC$a;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Labcd/hC$a;->Zo:[Labcd/hC$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/hC$a;
    .locals 1

    const-class v0, Labcd/hC$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/hC$a;

    return-object v0
.end method

.method public static values()[Labcd/hC$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/hC$a;->Zo:[Labcd/hC$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/hC$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
