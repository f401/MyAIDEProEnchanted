.class public La/a;
.super La/an;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p2}, La/an;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    iput p2, p0, La/a;->b:I

    iput-object p1, p0, La/a;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 4

    iget v0, p0, La/a;->b:I

    iget-object v1, p0, La/a;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La/a;->b:I

    aget-object v0, v1, v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "argument number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
