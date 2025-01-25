.class final synthetic Lcom/google/android/gms/internal/measurement/Na;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/measurement/Ma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/Ma;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Na;->j6:Lcom/google/android/gms/internal/measurement/Ma;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Na;->j6:Lcom/google/android/gms/internal/measurement/Ma;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ma;->j6(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
