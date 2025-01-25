.class Lio/fabric/sdk/android/services/common/b;
.super Ljava/lang/Object;


# instance fields
.field public final DW:Z

.field public final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    iput-boolean p2, p0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    const-class v2, Lio/fabric/sdk/android/services/common/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2a

    :cond_10
    check-cast p1, Lio/fabric/sdk/android/services/common/b;

    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    iget-boolean v3, p1, Lio/fabric/sdk/android/services/common/b;->DW:Z

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    iget-object p1, p1, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    if-eqz v2, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_28

    :cond_26
    if-eqz p1, :cond_29

    :goto_28
    return v1

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    add-int/2addr v0, v1

    return v0
.end method
