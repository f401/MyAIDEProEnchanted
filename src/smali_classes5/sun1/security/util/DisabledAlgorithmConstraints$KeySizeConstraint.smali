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

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->values()[Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->$SWITCH_TABLE$sun1$security$util$DisabledAlgorithmConstraints$KeySizeConstraint$Operator:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
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

    packed-switch v1, :pswitch_data_40

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v4, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    :goto_1e
    return-void

    :pswitch_1f  #0x6
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    const/4 v1, 0x1

    if-le p3, v1, :cond_26

    add-int/lit8 v0, p3, -0x1

    :cond_26
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    :pswitch_29  #0x5
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    :goto_2b
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    :pswitch_2e  #0x4
    add-int/lit8 p3, p3, 0x1

    :pswitch_30  #0x3
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    :pswitch_35  #0x2
    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    goto :goto_2b

    :pswitch_38  #0x1
    iput v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    iput p3, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    goto :goto_1e

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_30  #00000003
        :pswitch_2e  #00000004
        :pswitch_29  #00000005
        :pswitch_1f  #00000006
    .end packed-switch
.end method

.method private permitsImpl(Ljava/security/Key;)Z
    .registers 4

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lsun1/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    :goto_14
    const/4 v0, 0x0

    goto :goto_d

    :cond_16
    if-lez v0, :cond_c

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v1, :cond_14

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-gt v0, v1, :cond_14

    iget v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-ne v1, v0, :cond_c

    goto :goto_14
.end method


# virtual methods
.method public permits(Ljava/security/Key;)Z
    .registers 5

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-static {}, Lsun1/security/util/DisabledAlgorithmConstraints;->access$0()Lsun1/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_2b

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

    :cond_2b
    invoke-direct {p0, p1}, Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    goto :goto_d
.end method
