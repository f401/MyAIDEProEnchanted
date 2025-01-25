.class abstract Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Constraint"
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;

.field nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;

    return-void
.end method

.method synthetic constructor <init>(Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;)V
    .registers 2

    invoke-direct {p0}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;-><init>()V

    return-void
.end method


# virtual methods
.method public permits(Ljava/security/Key;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
