.class public Lcom/tencent/mm/directory/PathNotExist;
.super Lcom/tencent/mm/directory/DirectoryException;


# static fields
.field private static final serialVersionUID:J = -0x6070aacb6079a090L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/directory/DirectoryException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/DirectoryException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/directory/DirectoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/mm/directory/DirectoryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
