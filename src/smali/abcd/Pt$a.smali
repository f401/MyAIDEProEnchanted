.class public Labcd/Pt$a;
.super Ljava/io/DataInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Pt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final j6:Labcd/Pt$b;


# direct methods
.method public constructor <init>(Labcd/Pt$b;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/Pt$a;->j6:Labcd/Pt$b;

    return-void
.end method
