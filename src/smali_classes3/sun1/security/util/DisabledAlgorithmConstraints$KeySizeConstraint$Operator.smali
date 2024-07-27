.class public final enum Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENUM$VALUES:[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum EQ:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum GT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum LT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

.field public static final enum NE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v1, "EQ"

    invoke-direct {v0, v1, v8}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v2, "NE"

    invoke-direct {v1, v2, v9}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v2, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v3, "LT"

    invoke-direct {v2, v3, v10}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v3, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v4, "LE"

    invoke-direct {v3, v4, v11}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v4, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v5, "GT"

    invoke-direct {v4, v5, v12}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    new-instance v5, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const-string v6, "GE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    const/4 v6, 0x6

    new-array v6, v6, [Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ENUM$VALUES:[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .registers 2

    const-class v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    return-object v0
.end method

.method public static values()[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ENUM$VALUES:[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    array-length v1, v0

    new-array v2, v1, [Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
