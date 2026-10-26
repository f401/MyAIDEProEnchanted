.class public final enum Labcd/gC$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/gC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/gC$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/gC$a;

.field public static final enum FH:Labcd/gC$a;

.field private static final Hw:[Labcd/gC$a;

.field public static final enum j6:Labcd/gC$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Labcd/gC$a;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v4}, Labcd/gC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/gC$a;->j6:Labcd/gC$a;

    new-instance v1, Labcd/gC$a;

    const-string v2, "TRUE"

    invoke-direct {v1, v2, v5}, Labcd/gC$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/gC$a;->DW:Labcd/gC$a;

    new-instance v2, Labcd/gC$a;

    const-string v3, "COPY"

    invoke-direct {v2, v3, v6}, Labcd/gC$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/gC$a;->FH:Labcd/gC$a;

    const/4 v3, 0x3

    new-array v3, v3, [Labcd/gC$a;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Labcd/gC$a;->Hw:[Labcd/gC$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/gC$a;
    .locals 1

    const-class v0, Labcd/gC$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/gC$a;

    return-object v0
.end method

.method public static values()[Labcd/gC$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/gC$a;->Hw:[Labcd/gC$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/gC$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
