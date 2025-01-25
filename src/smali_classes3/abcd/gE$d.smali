.class Labcd/gE$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/gE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private DW:I

.field private final j6:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Labcd/gE$d;->j6:[C

    return-void
.end method


# virtual methods
.method DW()V
    .registers 2

    iget v0, p0, Labcd/gE$d;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/gE$d;->DW:I

    return-void
.end method

.method j6()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/gE$d;->j6:[C

    iget v1, p0, Labcd/gE$d;->DW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/gE$d;->DW:I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_b

    aget-char v0, v0, v1

    return v0

    :catch_b
    move-exception v0

    iget-object v0, p0, Labcd/gE$d;->j6:[C

    array-length v0, v0

    iput v0, p0, Labcd/gE$d;->DW:I

    const/4 v0, -0x1

    return v0
.end method
