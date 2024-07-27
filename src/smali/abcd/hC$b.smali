.class public final enum Labcd/hC$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/hC$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/hC$b;

.field private static final FH:[Labcd/hC$b;

.field public static final enum j6:Labcd/hC$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/hC$b;

    const-string v1, "OLD"

    invoke-direct {v0, v1, v2}, Labcd/hC$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    new-instance v0, Labcd/hC$b;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Labcd/hC$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/hC$b;->DW:Labcd/hC$b;

    const/4 v0, 0x2

    new-array v0, v0, [Labcd/hC$b;

    sget-object v1, Labcd/hC$b;->j6:Labcd/hC$b;

    aput-object v1, v0, v2

    sget-object v1, Labcd/hC$b;->DW:Labcd/hC$b;

    aput-object v1, v0, v3

    sput-object v0, Labcd/hC$b;->FH:[Labcd/hC$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/hC$b;
    .registers 2

    const-class v0, Labcd/hC$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/hC$b;

    return-object v0
.end method

.method public static values()[Labcd/hC$b;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/hC$b;->FH:[Labcd/hC$b;

    array-length v1, v0

    new-array v2, v1, [Labcd/hC$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
