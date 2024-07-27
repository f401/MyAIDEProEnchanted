.class public abstract enum Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
.super Ljava/lang/Enum;
.source "JavacFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "SortFiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

.field public static final enum FORWARD:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

.field public static final enum REVERSE:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 883
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$1;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->FORWARD:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    .line 888
    new-instance v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$2;

    const-string v1, "REVERSE"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->REVERSE:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    .line 882
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    sget-object v2, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->FORWARD:Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->$VALUES:[Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 882
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sun/tools/javac/file/JavacFileManager$1;)V
    .registers 4

    .line 882
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
    .registers 2

    .line 882
    const-class v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;
    .registers 1

    .line 882
    sget-object v0, Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->$VALUES:[Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/file/JavacFileManager$SortFiles;

    return-object v0
.end method
