.class Lsun1/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
.super Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "jdkCAConstraint"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;)V

    iput-object p1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->algorithm:Ljava/lang/String;

    return-void
.end method
