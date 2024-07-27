.class public final enum Labcd/jC$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/jC$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/jC$a;

.field public static final enum FH:Labcd/jC$a;

.field public static final enum Hw:Labcd/jC$a;

.field public static final enum j6:Labcd/jC$a;

.field private static final v5:[Labcd/jC$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/jC$a;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jC$a;->j6:Labcd/jC$a;

    new-instance v0, Labcd/jC$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jC$a;->DW:Labcd/jC$a;

    new-instance v0, Labcd/jC$a;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v4}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jC$a;->FH:Labcd/jC$a;

    new-instance v0, Labcd/jC$a;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v5}, Labcd/jC$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/jC$a;->Hw:Labcd/jC$a;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/jC$a;

    sget-object v1, Labcd/jC$a;->j6:Labcd/jC$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/jC$a;->DW:Labcd/jC$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/jC$a;->FH:Labcd/jC$a;

    aput-object v1, v0, v4

    sget-object v1, Labcd/jC$a;->Hw:Labcd/jC$a;

    aput-object v1, v0, v5

    sput-object v0, Labcd/jC$a;->v5:[Labcd/jC$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/jC$a;
    .registers 2

    const-class v0, Labcd/jC$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/jC$a;

    return-object v0
.end method

.method public static values()[Labcd/jC$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/jC$a;->v5:[Labcd/jC$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/jC$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
