.class public La/b/b/p;
.super La/b/b/b;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput-object p1, p0, La/b/b/p;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/p;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/a/i;)V
    .registers 12

    iget-object v0, p0, La/b/b/p;->a:Ljava/lang/Object;

    instance-of v1, v0, [Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    check-cast v0, [Z

    :goto_9
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-boolean v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    instance-of v1, v0, [B

    if-eqz v1, :cond_25

    check-cast v0, [B

    :goto_1a
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-byte v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_25
    instance-of v1, v0, [C

    if-eqz v1, :cond_36

    check-cast v0, [C

    :goto_2b
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-char v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_36
    instance-of v1, v0, [S

    if-eqz v1, :cond_47

    check-cast v0, [S

    :goto_3c
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-short v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_47
    instance-of v1, v0, [I

    if-eqz v1, :cond_58

    check-cast v0, [I

    :goto_4d
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_58
    instance-of v1, v0, [F

    if-eqz v1, :cond_69

    check-cast v0, [F

    :goto_5e
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget v1, v0, v2

    invoke-interface {p2, p1, p0, v2, v1}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_69
    instance-of v1, v0, [J

    if-eqz v1, :cond_7e

    check-cast v0, [J

    :goto_6f
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-wide v7, v0, v2

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move v6, v2

    invoke-interface/range {v3 .. v8}, La/b/b/a/i;->a(La/b/c;La/b/b/p;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_7e
    instance-of v1, v0, [D

    if-eqz v1, :cond_93

    check-cast v0, [D

    :goto_84
    array-length v1, v0

    if-ge v2, v1, :cond_93

    aget-wide v7, v0, v2

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move v6, v2

    invoke-interface/range {v3 .. v8}, La/b/b/a/i;->a(La/b/c;La/b/b/p;ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_93
    return-void
.end method

.method public b()C
    .registers 3

    iget-object v0, p0, La/b/b/p;->a:Ljava/lang/Object;

    instance-of v1, v0, [Z

    if-eqz v1, :cond_9

    const/16 v0, 0x5a

    goto :goto_3b

    :cond_9
    instance-of v1, v0, [B

    if-eqz v1, :cond_10

    const/16 v0, 0x42

    goto :goto_3b

    :cond_10
    instance-of v1, v0, [C

    if-eqz v1, :cond_17

    const/16 v0, 0x43

    goto :goto_3b

    :cond_17
    instance-of v1, v0, [S

    if-eqz v1, :cond_1e

    const/16 v0, 0x53

    goto :goto_3b

    :cond_1e
    instance-of v1, v0, [I

    if-eqz v1, :cond_25

    const/16 v0, 0x49

    goto :goto_3b

    :cond_25
    instance-of v1, v0, [F

    if-eqz v1, :cond_2c

    const/16 v0, 0x46

    goto :goto_3b

    :cond_2c
    instance-of v1, v0, [J

    if-eqz v1, :cond_33

    const/16 v0, 0x4a

    goto :goto_3b

    :cond_33
    instance-of v0, v0, [D

    if-eqz v0, :cond_3a

    const/16 v0, 0x44

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, La/b/b/p;->a:Ljava/lang/Object;

    instance-of v1, v0, [Z

    if-eqz v1, :cond_a

    check-cast v0, [Z

    array-length v0, v0

    goto :goto_43

    :cond_a
    instance-of v1, v0, [B

    if-eqz v1, :cond_12

    check-cast v0, [B

    array-length v0, v0

    goto :goto_43

    :cond_12
    instance-of v1, v0, [C

    if-eqz v1, :cond_1a

    check-cast v0, [C

    array-length v0, v0

    goto :goto_43

    :cond_1a
    instance-of v1, v0, [S

    if-eqz v1, :cond_22

    check-cast v0, [S

    array-length v0, v0

    goto :goto_43

    :cond_22
    instance-of v1, v0, [I

    if-eqz v1, :cond_2a

    check-cast v0, [I

    array-length v0, v0

    goto :goto_43

    :cond_2a
    instance-of v1, v0, [F

    if-eqz v1, :cond_32

    check-cast v0, [F

    array-length v0, v0

    goto :goto_43

    :cond_32
    instance-of v1, v0, [J

    if-eqz v1, :cond_3a

    check-cast v0, [J

    array-length v0, v0

    goto :goto_43

    :cond_3a
    instance-of v1, v0, [D

    if-eqz v1, :cond_42

    check-cast v0, [D

    array-length v0, v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/b/p;->a:Ljava/lang/Object;

    return-object v0
.end method
