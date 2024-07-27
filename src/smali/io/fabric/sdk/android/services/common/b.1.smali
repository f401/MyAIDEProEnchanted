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

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-class v2, Lio/fabric/sdk/android/services/common/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lio/fabric/sdk/android/services/common/b;

    iget-boolean v2, p0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    iget-boolean v3, p1, Lio/fabric/sdk/android/services/common/b;->DW:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
