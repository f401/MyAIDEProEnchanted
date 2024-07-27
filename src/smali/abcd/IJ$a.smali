.class public final enum Labcd/IJ$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/IJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/IJ$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/IJ$a;

.field public static final enum FH:Labcd/IJ$a;

.field private static final Hw:[Labcd/IJ$a;

.field public static final enum j6:Labcd/IJ$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/IJ$a;

    const-string v1, "ADVERTISED"

    invoke-direct {v0, v1, v2}, Labcd/IJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/IJ$a;->j6:Labcd/IJ$a;

    new-instance v0, Labcd/IJ$a;

    const-string v1, "REACHABLE_COMMIT"

    invoke-direct {v0, v1, v3}, Labcd/IJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/IJ$a;->DW:Labcd/IJ$a;

    new-instance v0, Labcd/IJ$a;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v4}, Labcd/IJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/IJ$a;->FH:Labcd/IJ$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/IJ$a;

    sget-object v1, Labcd/IJ$a;->j6:Labcd/IJ$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/IJ$a;->DW:Labcd/IJ$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/IJ$a;->FH:Labcd/IJ$a;

    aput-object v1, v0, v4

    sput-object v0, Labcd/IJ$a;->Hw:[Labcd/IJ$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/IJ$a;
    .registers 2

    const-class v0, Labcd/IJ$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/IJ$a;

    return-object v0
.end method

.method public static values()[Labcd/IJ$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/IJ$a;->Hw:[Labcd/IJ$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/IJ$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
