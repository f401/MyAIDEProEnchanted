.class Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    }
.end annotation


# static fields
.field private static $SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator:[I


# instance fields
.field private maxSize:I

.field private minSize:I

.field private prohibitedSize:I


# direct methods
.method static synthetic $SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator()[I
    .registers 3

    sget-object v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->$SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->values()[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->$SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V
    .registers 9

    const/4 v4, -0x1

    const v3, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;)V

    iput v4, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    iput-object p1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->$SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator()[I

    move-result-object v1

    invoke-virtual {p2}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v4, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    :cond_0
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    :goto_1
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 p3, p3, 0x1

    :pswitch_3
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_4
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    goto :goto_1

    :pswitch_5
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private permitsImpl(Ljava/security/Key;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lsun1/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-lez v0, :cond_0

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-gt v0, v1, :cond_2

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-ne v1, v0, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public permits(Ljava/security/Key;)Z
    .registers 5

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints;->access$0()Lsun1/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints;->access$0()Lsun1/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeySizeConstraints.permits(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun1/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    goto :goto_0
.end method
