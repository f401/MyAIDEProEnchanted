.class public Labcd/ZN;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/fO;


# instance fields
.field private final DW:[B

.field private final j6:Labcd/zL;


# direct methods
.method public constructor <init>(Labcd/zL;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ZN;->j6:Labcd/zL;

    iput-object p2, p0, Labcd/ZN;->DW:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Labcd/zL;

    sget-object v1, Labcd/TM;->j6:Labcd/zL;

    invoke-virtual {v1}, Labcd/oM;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Labcd/ZN;-><init>(Labcd/zL;[B)V

    return-void
.end method


# virtual methods
.method public getContentType()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/ZN;->j6:Labcd/zL;

    return-object v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Labcd/ZN;->DW:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
