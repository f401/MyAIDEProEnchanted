.class final Labcd/TD;
.super Labcd/MD;


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/MD;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected final DW(C)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
