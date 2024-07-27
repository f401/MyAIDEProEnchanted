.class final Labcd/_J$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final DW:Ljava/nio/charset/CharsetEncoder;

.field FH:Ljava/security/MessageDigest;

.field Hw:[B

.field Zo:I

.field final j6:Labcd/bK;

.field v5:Labcd/YJ;


# direct methods
.method constructor <init>(Labcd/bK;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_J$b;->j6:Labcd/bK;

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Labcd/_J$b;->DW:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method j6()V
    .registers 2

    iget-object v0, p0, Labcd/_J$b;->FH:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/_J$b;->FH:Ljava/security/MessageDigest;

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/_J$b;->Hw:[B

    :cond_0
    return-void
.end method
