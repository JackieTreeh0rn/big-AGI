import { create } from 'zustand';
import { persist } from 'zustand/middleware';


interface ModuleGoogleSearchStore {

  // Google Custom Search settings

  googleCloudApiKey: string;
  setGoogleCloudApiKey: (googleApiKey: string) => void;

  googleCSEId: string;
  setGoogleCSEId: (cseId: string) => void;

  restrictToDomain: string;
  setRestrictToDomain: (domain: string) => void;

}

export const useGoogleSearchStore = create<ModuleGoogleSearchStore>()(
  persist(
    (set) => ({

      // Google Custom Search settings

      googleCloudApiKey: '',
      setGoogleCloudApiKey: (googleApiKey: string) => set({ googleCloudApiKey: googleApiKey }),

      googleCSEId: '',
      setGoogleCSEId: (cseId: string) => set({ googleCSEId: cseId }),

      restrictToDomain: '',
      setRestrictToDomain: (domain: string) => set({ restrictToDomain: domain }),

    }),
    {
      name: 'app-module-google-search',
    }),
);