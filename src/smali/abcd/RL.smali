.class Labcd/RL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/SL;->tp()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/SL;

.field j6:I


# direct methods
.method constructor <init>(Labcd/SL;)V
    .registers 3

    iput-object p1, p0, Labcd/RL;->DW:Labcd/SL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/RL;->j6:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Labcd/RL;->j6:I

    iget-object v1, p0, Labcd/RL;->DW:Labcd/SL;

    invoke-static {v1}, Labcd/SL;->j6(Labcd/SL;)[Labcd/AL;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Labcd/RL;->DW:Labcd/SL;

    invoke-static {v0}, Labcd/SL;->j6(Labcd/SL;)[Labcd/AL;

    move-result-object v0

    iget v1, p0, Labcd/RL;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/RL;->j6:I

    aget-object v0, v0, v1

    return-object v0
.end method
