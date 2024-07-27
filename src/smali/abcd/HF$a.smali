.class public final enum Labcd/HF$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/HF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/HF$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/HF$a;

.field public static final enum FH:Labcd/HF$a;

.field private static final Hw:[Labcd/HF$a;

.field public static final enum j6:Labcd/HF$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/HF$a;

    const-string v1, "UNIFIED"

    invoke-direct {v0, v1, v2}, Labcd/HF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/HF$a;->j6:Labcd/HF$a;

    new-instance v0, Labcd/HF$a;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v3}, Labcd/HF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/HF$a;->DW:Labcd/HF$a;

    new-instance v0, Labcd/HF$a;

    const-string v1, "GIT_BINARY"

    invoke-direct {v0, v1, v4}, Labcd/HF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/HF$a;->FH:Labcd/HF$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/HF$a;

    sget-object v1, Labcd/HF$a;->j6:Labcd/HF$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/HF$a;->DW:Labcd/HF$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/HF$a;->FH:Labcd/HF$a;

    aput-object v1, v0, v4

    sput-object v0, Labcd/HF$a;->Hw:[Labcd/HF$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/HF$a;
    .registers 2

    const-class v0, Labcd/HF$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/HF$a;

    return-object v0
.end method

.method public static values()[Labcd/HF$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/HF$a;->Hw:[Labcd/HF$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/HF$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
