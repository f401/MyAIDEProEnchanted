.class public enum Labcd/WA$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/WA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/WA$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/WA$a;

.field public static final enum FH:Labcd/WA$a;

.field private static final Hw:[Labcd/WA$a;

.field public static final enum j6:Labcd/WA$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Labcd/TA;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Labcd/TA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/WA$a;->j6:Labcd/WA$a;

    new-instance v1, Labcd/UA;

    const-string v2, "FAILED"

    invoke-direct {v1, v2, v5}, Labcd/UA;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/WA$a;->DW:Labcd/WA$a;

    new-instance v2, Labcd/VA;

    const-string v3, "CONFLICTING"

    invoke-direct {v2, v3, v6}, Labcd/VA;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/WA$a;->FH:Labcd/WA$a;

    const/4 v3, 0x3

    new-array v3, v3, [Labcd/WA$a;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Labcd/WA$a;->Hw:[Labcd/WA$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILabcd/WA$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Labcd/WA$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/WA$a;
    .locals 1

    const-class v0, Labcd/WA$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/WA$a;

    return-object v0
.end method

.method public static values()[Labcd/WA$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/WA$a;->Hw:[Labcd/WA$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/WA$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
